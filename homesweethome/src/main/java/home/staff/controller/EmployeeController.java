package home.staff.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import home.commons.exception.NotExistPictureFileException;
import home.commons.request.PageMaker;
import home.staff.dto.EmployeeVO;
import home.staff.request.EmployeeModifyRequest;
import home.staff.request.EmployeeRegistRequest;
import home.staff.service.EmployeeService;

@Controller
@RequestMapping("/staff")
public class EmployeeController {
	
	private EmployeeService employeeService;

	@Autowired
	public EmployeeController(EmployeeService employeeService, EmployeeService employee) {
		this.employeeService = employeeService;
	}
	
	@GetMapping("/employee")
	public String List(@ModelAttribute PageMaker pageMaker, Model model) throws Exception {
		List<EmployeeVO> employeeList = employeeService.searchList(pageMaker);
		model.addAttribute("employeeList", employeeList);
		
		return "/staff/employee/employee";
	}

	@GetMapping("/employee/open_regist")
	public String employee_open_regist() {
		String url = "staff/employee/open_regist";
		return url;
	}
	
	@Resource(name = "employeePicturePath")
	private String picturePath;
	
	@PostMapping(value = "/employee/regist/post", produces = "text/plain;charset=utf-8")
	public ModelAndView regist(@ModelAttribute EmployeeRegistRequest regRequest, ModelAndView mnv) {
	    String url = "/staff/employee/regist_success";

	    try {
	        // 파일 저장
	        MultipartFile multi = regRequest.getPicture();
	        if (multi == null || multi.isEmpty()) {
	            mnv.setViewName("/error/400.jsp");
	            return mnv;
	        }

	        String fileName = savePicture(null, multi);

	        // DB 저장
	        EmployeeVO employee = regRequest.toEmployeeVO();
	        employee.setPicture(fileName);
	        employeeService.regist(employee);

	    } catch (Exception e) {
	        url = "/error/500.jsp";
	        e.printStackTrace();
	    }

	    mnv.setViewName(url);
	    return mnv;
	}

	
	@GetMapping("/getPicture")
	@ResponseBody
	public ResponseEntity<byte[]> getPicture(String eid) {
		ResponseEntity entity = null;

		EmployeeVO employee = null;
		try {
			employee = employeeService.getEmployee(eid);
		}catch(SQLException e) {
			return new ResponseEntity<byte[]>(HttpStatus.INTERNAL_SERVER_ERROR);
		}

		if (employee == null)
			return new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);

		String picture = employee.getPicture();
		String imgPath = this.picturePath;

		InputStream in = null;

		try {
			in = new FileInputStream(new File(imgPath, picture));
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), HttpStatus.OK);
			return entity;
			
		}catch(IOException e) {
			System.out.println("Not Founded ::: "+employee.getEid()+":"+employee.getPicture());
			return new ResponseEntity<byte[]>(HttpStatus.NOT_FOUND);
		}finally {
			if (in != null)
				try {
					in.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
		}

	}
	
	@GetMapping("/employee/detail")
	public String employee_detail(String eid, Model model) throws Exception {
		EmployeeVO employee = employeeService.getEmployee(eid);
		
		if (employee == null) {
			model.addAttribute("errorMessage", "해당 eid(" + eid + " )에 대한 데이터를 찾을 수 없습니다.");
			return "errorPage";
		}
		
		model.addAttribute("employee", employee);
		return "/staff/employee/detail";
	}

	@GetMapping("/employee/modify")
	public ModelAndView employee_modify(String eid, ModelAndView mnv) throws Exception {
		String url="/staff/employee/modify";
		
		EmployeeVO employee = employeeService.getEmployee(eid);
		
		mnv.addObject("employee", employee);
		mnv.setViewName(url);
		
		return mnv;
	}
	@PostMapping(value="/employee/modify/post", produces = "text/plain;charset=utf-8")
	public ModelAndView employee_modify_post(EmployeeModifyRequest modifyRequest, ModelAndView mnv) throws Exception {
		String url = "/staff/employee/modify_success";

	    // EmployeeVO 변환
	    EmployeeVO employee = modifyRequest.toEmployeeVO();
	    MultipartFile multi = modifyRequest.getPicture();
	    String oldPicture = employeeService.getEmployee(employee.getEid()).getPicture();

	  //파일 저장 및 삭제
	  		try {
	  			String fileName = savePicture(oldPicture, multi);
	  			employee.setPicture(fileName);
	  		}catch (NotExistPictureFileException e) {
	  			employee.setPicture(oldPicture);
	  		}catch (Exception e) {
	  			url = "/error/500.jsp";
	  			e.printStackTrace();
	  		}


	    employeeService.modify(employee);
	    
	    mnv.addObject("eid",employee.getEid());
	    mnv.setViewName(url);
	    return mnv;
	}
	
	public String savePicture(String oldPicture, MultipartFile multi)
	        throws NotExistPictureFileException, IllegalStateException, IOException {

	    if (multi == null || multi.isEmpty() || multi.getSize() > 1024 * 1024 * 1)
	        throw new NotExistPictureFileException();

	    // 저장 파일명
	    String fileName = null;

	    // 파일저장폴더설정
	    String uploadPath = this.picturePath;

	    // 파일유무확인, 저장 파일명 결정
	    String uuid = UUID.randomUUID().toString().replace("-", "");
	    fileName = uuid + "$$" + multi.getOriginalFilename();
	    File storeFile = new File(uploadPath, fileName);

	    // 파일경로 생성
	    storeFile.mkdirs();
	    
	    // local HDD 에 저장.
	    multi.transferTo(storeFile);

	    // 기존파일 삭제
	    if (oldPicture != null && !oldPicture.isEmpty()) {
	        File oldFile = new File(uploadPath, oldPicture);
	        if (oldFile.exists()) {
	            oldFile.delete();
	        }
	    }

	    return fileName;
	}
	
	@GetMapping("/employee/idCheck")
	@ResponseBody
    public String checkEmployeeId(String eid) throws Exception {
		 System.out.println("중복 체크 요청 EID: " + eid);
	        String result = "duplicated";
	        EmployeeVO employee = employeeService.getEmployee(eid);
	        if (employee == null) {
	            result = "available";
	        }
	        System.out.println("중복 체크 결과: " + result);
	        return result;
    }

}
