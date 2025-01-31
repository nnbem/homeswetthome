package home.member.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import home.commons.exception.NotExistPictureFileException;
import home.member.dto.MemberVO;
import home.member.request.MemberJoinRequest;
import home.member.service.SearchMemberService;


@Controller
@RequestMapping("/member")
public class JoinController {

    private SearchMemberService memberService;

    @Autowired
    public JoinController(SearchMemberService memberService) {
        this.memberService = memberService;
    }

    @GetMapping("/join")
    public String join() {
        return "member/join"; // 회원가입 페이지로 이동
    }

    @GetMapping("/checkid")
    @ResponseBody
    public String checkid(String mid) throws Exception {
        String result = "duplicated";
        MemberVO member = memberService.getMember(mid);
        if (member == null) {
            result = "";
        }
        return result;
    }
    
    @Resource(name = "picturePath")
	private String picturePath = "c:/member/picture";

    @PostMapping(value = "/main", produces = "text/plain;charset=utf-8")
    public ModelAndView registMember(MemberJoinRequest joinRequest, ModelAndView mnv) {
        String url = "/member/join_success"; // 성공 페이지 경로
        
        try {
            // MultipartFile picture 저장
            MultipartFile multi = joinRequest.getPicture();
            String fileName = savePicture(null, multi);

            MemberVO member = joinRequest.toMemberVO();
            
            // picture 저장 후 파일명 member에 할당
            member.setPicture(fileName);
            
            memberService.regist(member); // 회원 등록

        } catch (Exception e) {
            e.printStackTrace();
            url = "/error/500"; // 실패 시 에러 페이지로 이동
        }
        
        mnv.setViewName(url);
        return mnv;
    }


    @GetMapping("/getPicture")
	@ResponseBody
	public ResponseEntity<byte[]> getPicture(String mid) {
		ResponseEntity<byte[]> entity = null;
		
		MemberVO member = null;
		try {
			 member = memberService.getMember(mid);
		}catch(SQLException e) {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}

		if (member == null)
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);

		String picture = member.getPicture();
		String imgPath = this.picturePath;

		InputStream in = null;

		try {
			in = new FileInputStream(new File(imgPath, picture));
			entity = new ResponseEntity<>(IOUtils.toByteArray(in), HttpStatus.OK);
			return entity;
			
		}catch(IOException e) {
			System.out.println("Not Founded ::: "+member.getMid()+":"+member.getPicture());
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
   
}
