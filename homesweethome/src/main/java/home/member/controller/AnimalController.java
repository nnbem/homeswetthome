package home.member.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.IOUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import home.commons.request.AnimalCarePageMaker;
import home.staff.dao.AnimalImgDAO;
import home.staff.dto.AnimalCareVO;
import home.staff.dto.AnimalImgVO;
import home.staff.dto.BasicVO;
import home.staff.dto.BreedVO;
import home.staff.dto.InjectionVO;
import home.staff.dto.TreatmentVO;
import home.staff.service.AnimalCareService;

@Controller
@RequestMapping("/member")
public class AnimalController {
	
	private AnimalCareService animalCareService;
	private AnimalImgDAO animalImgDAO;
	public AnimalController(AnimalImgDAO animalImgDAO, AnimalCareService animalCareService) {
		this.animalCareService = animalCareService;
		this.animalImgDAO = animalImgDAO;
	}
	
	@GetMapping("/animal")
	public String animal() {
		String url="/member/animal/animal";
		return url;		
	}
	@GetMapping("/animal/announcement")
	public ModelAndView announcement(@ModelAttribute(name = "pageMaker") AnimalCarePageMaker pageMaker, ModelAndView mnv)throws Exception {
		String url="/member/animal/announcement/announcement";
		
		List <AnimalCareVO> animalCareList = animalCareService.list(pageMaker);
		List<BreedVO> breedList = animalCareService.BreedList();
		
		Map<String,Object> dataMap = new HashMap<String,Object>();
		dataMap.put("animalCareList", animalCareList);
		dataMap.put("breedList", breedList);
		
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@GetMapping("/animal/care")
	public ModelAndView animalCare(@ModelAttribute(name = "pageMaker") AnimalCarePageMaker pageMaker, ModelAndView mnv)throws Exception {
		String url="/member/animal/care/care";
		
		List <AnimalCareVO> animalCareList = animalCareService.list(pageMaker);
		List<BreedVO> breedList = animalCareService.BreedList();
		
		Map<String,Object> dataMap = new HashMap<String,Object>();
		dataMap.put("animalCareList", animalCareList);
		dataMap.put("breedList", breedList);
		
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@GetMapping("/animal/completion")
	public ModelAndView animalCompletion(@ModelAttribute(name = "pageMaker") AnimalCarePageMaker pageMaker ,ModelAndView mnv)throws Exception {
		String url="/member/animal/completion/completion";
		
		List <AnimalCareVO> animalCareList = animalCareService.list(pageMaker);
		List<BreedVO> breedList = animalCareService.BreedList();
		
		Map<String,Object> dataMap = new HashMap<String,Object>();
		dataMap.put("animalCareList", animalCareList);
		dataMap.put("breedList", breedList);
		
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		
		return mnv;	
	}
	@GetMapping("/animal/possibility")
	public ModelAndView animalPossibility(@ModelAttribute(name = "pageMaker")AnimalCarePageMaker pageMaker, ModelAndView mnv)throws Exception {
		String url="/member/animal/possibility/possibility";
		
		List <AnimalCareVO> animalCareList = animalCareService.list(pageMaker);
		List<BreedVO> breedList = animalCareService.BreedList();
		
		Map<String,Object> dataMap = new HashMap<String,Object>();
		dataMap.put("animalCareList", animalCareList);
		dataMap.put("breedList", breedList);
		
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		
		return mnv;		
	}
	
	@GetMapping("/animal/detail")
	public ModelAndView animalAnnouncementDetail(ModelAndView mnv, Long aid)throws Exception {
		String url="/member/animal/detail";
		
		BasicVO basic = animalCareService.basic(aid);
		
		mnv.addObject("basic", basic);
		mnv.setViewName(url);
		
		return mnv;	
	}
	
	@javax.annotation.Resource(name="animalImgSavedFilePath")
	private String animalImgSavedFilePath;
	
	@GetMapping("/animal/getAnimalImg")
	@ResponseBody
	public ResponseEntity<byte[]> getAnimalImg(@RequestParam("aino") int aino) throws Exception {
	    ResponseEntity<byte[]> entity;

	    // 데이터베이스에서 이미지 정보 가져오기
	    AnimalImgVO animalImg = animalImgDAO.selectAnimalImgByAino(aino);
	    if (animalImg == null) {
	        return new ResponseEntity<>(HttpStatus.NOT_FOUND); // 이미지가 없을 경우 404 반환
	    }

	    // 파일 경로와 이름
	    String imgPath = animalImgSavedFilePath;
	    String fileName = animalImg.getName();

	    // 파일 읽기
	    InputStream in = null;
	    try {
	        File file = new File(imgPath, fileName);
	        in = new FileInputStream(file);

	        // 이미지 데이터 반환
	        HttpHeaders headers = new HttpHeaders();
	        headers.setContentType(MediaType.IMAGE_JPEG); // 이미지 타입 지정
	        entity = new ResponseEntity<>(IOUtils.toByteArray(in), headers, HttpStatus.OK);
	    } catch (IOException e) {
	        e.printStackTrace();
	        entity = new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR); // 읽기 실패 시 500 반환
	    } finally {
	        if (in != null) {
	            try {
	                in.close();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	        }
	    }

	    return entity;
	}
	
}
