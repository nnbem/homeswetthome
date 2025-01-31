package home.staff.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.josephoconnell.html.HTMLInputFilter;

import home.commons.request.AnimalCarePageMaker;
import home.commons.request.TreatmentPageMaker;
import home.staff.dao.AnimalImgDAO;
import home.staff.dto.AnimalCareVO;
import home.staff.dto.AnimalImgVO;
import home.staff.dto.AnimalVO;
import home.staff.dto.BasicVO;
import home.staff.dto.BreedVO;
import home.staff.dto.InjectionVO;
import home.staff.dto.ReceiveVO;
import home.staff.dto.TreatmentVO;
import home.staff.request.AnimalModifyRequest;
import home.staff.request.AnimalRegistRequest;
import home.staff.request.InjectionRegistRequest;
import home.staff.request.TreatmentModifyRequest;
import home.staff.request.TreatmentRegistRequest;
import home.staff.service.AnimalCareService;
import home.staff.service.InjectionService;
import home.staff.service.ReceiveService;
import home.staff.service.TreatmentService;

@Controller
@RequestMapping("/staff")
public class AnimalcareController {
	
	private AnimalCareService animalCareService;
	private ReceiveService receiveService;
	private TreatmentService treatmentService;
	private InjectionService injectionService;
	private AnimalImgDAO animalImgDAO;
	@Autowired
	public AnimalcareController(AnimalImgDAO animalImgDAO, AnimalCareService animalCareService, ReceiveService receiveService, TreatmentService treatmentService, InjectionService injectionService) {
		this.animalCareService = animalCareService;
		this.receiveService = receiveService;
		this.treatmentService = treatmentService;
		this.injectionService = injectionService;
		this.animalImgDAO = animalImgDAO;
	}
	
	@GetMapping("/animalcare")
	public ModelAndView animalcare(@ModelAttribute(name = "pageMaker") AnimalCarePageMaker pageMaker, ModelAndView mnv)throws Exception {
		String url="/staff/animalcare/animalcare";
		
		List <AnimalCareVO> animalCareList = animalCareService.list(pageMaker);
		List<BreedVO> breedList = animalCareService.BreedList();
		
		Map<String,Object> dataMap = new HashMap<String,Object>();
		dataMap.put("animalCareList", animalCareList);
		dataMap.put("breedList", breedList);
		
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@GetMapping("/animalcare/rpb")
	public ModelAndView animalcareRpb(@ModelAttribute(name = "pageMaker") AnimalCarePageMaker pageMaker, ModelAndView mnv)throws Exception {
		String url="/staff/animalcare/rpb";
		
		List <AnimalCareVO> animalCareList = animalCareService.list(pageMaker);
		mnv.addObject("animalCareList",animalCareList);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@GetMapping("/animalcare/basic")
	public ModelAndView basic(ModelAndView mnv, Long aid)throws Exception {
		String url="/staff/animalcare/basic/basic";
		
		BasicVO basic = animalCareService.basic(aid);
		InjectionVO injection = injectionService.injection(aid);
		List<TreatmentVO> treatmentList = treatmentService.selectTreatmentListByAid(aid);

		Map<String,Object> dataMap = new HashMap<String,Object>();
		dataMap.put("basic",basic);
		dataMap.put("injection", injection);
		dataMap.put("treatmentList", treatmentList);
		
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@GetMapping("/animalcare/getAnimalImg")
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

	@GetMapping("/animalcare/regist")
	public ModelAndView animalRegist(ModelAndView mnv, Long aid)throws Exception{
		String url="/staff/animalcare/regist";
		aid = animalCareService.getAnimalSeq();
		List<BreedVO> breedList = animalCareService.BreedList();
		Map<String,Object> dataMap = new HashMap<String,Object>();
		dataMap.put("breedList", breedList);
		dataMap.put("aid", aid);
		
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		return mnv;
	}
	
	@javax.annotation.Resource(name="animalImgSavedFilePath")
	private String animalImgSavedFilePath;
	
	@PostMapping(value = "/animalcare/regist/post", produces = "text/plain;charset=utf-8")
	public ModelAndView animalRegistPost(AnimalRegistRequest regRequest, ModelAndView mnv)throws Exception{
		String url = "/staff/animalcare/regist_success";
		
		System.out.println(regRequest.toString());
		
		List<MultipartFile> multiList = regRequest.getPictureList();
		
		List<AnimalImgVO> animalImgList = savePictureToAnimalImg(multiList, animalImgSavedFilePath);
		
		AnimalVO animal = regRequest.toAnimal();
		animal.setAnimalImgList(animalImgList);
		animal.setCharacter(HTMLInputFilter.htmlSpecialChars(animal.getCharacter()));
		animal.setColor(HTMLInputFilter.htmlSpecialChars(animal.getColor()));
		animal.setName(HTMLInputFilter.htmlSpecialChars(animal.getName()));
		animal.setOther(HTMLInputFilter.htmlSpecialChars(animal.getOther()));
		animal.setState(HTMLInputFilter.htmlSpecialChars(animal.getState()));
		
		ReceiveVO receive = regRequest.toReceive();
		
		animalCareService.registAnimal(animal,receive);
		mnv.setViewName(url);
		return mnv;
	}

	private List<AnimalImgVO> savePictureToAnimalImg(List<MultipartFile> multiFiles,String animalImgSavedFilePath )throws Exception{
		if (multiFiles == null) return null;
		
		//저장 -> attachVO -> attachList.add
		List<AnimalImgVO> animalImgList = new ArrayList<AnimalImgVO>();
		for (MultipartFile multi : multiFiles) {
			
			//파일명
			String uuid = UUID.randomUUID().toString().replace("-", "");
			String fileName = uuid+"$$"+multi.getOriginalFilename();
			
			//파일저장
			File target = new File(animalImgSavedFilePath, fileName);
			target.mkdirs();
			multi.transferTo(target);
			
			AnimalImgVO animalImg = new AnimalImgVO();
			animalImg.setPicture(animalImgSavedFilePath);
			animalImg.setName(fileName);
			animalImg.setType(fileName.substring(fileName.lastIndexOf('.') + 1).toUpperCase());
			
			animalImgList.add(animalImg);
		}
		
		
		return animalImgList;
	}
	
	@GetMapping("/animalcare/basic/modify")
	public ModelAndView basicModify(ModelAndView mnv, Long aid)throws Exception {
		String url="/staff/animalcare/basic/modify";
		
		AnimalVO animal = animalCareService.animalByAid(aid);
		int rcno = receiveService.getRcnoByAid(aid);
		ReceiveVO receive = receiveService.getReceive(rcno);
		List<BreedVO> breedList = animalCareService.BreedList();
		BasicVO basic = animalCareService.basic(aid);
		
		Map<String,Object> dataMap = new HashMap<String,Object>();
		dataMap.put("basic", basic);
		dataMap.put("animal", animal);
		dataMap.put("receive", receive);
		dataMap.put("breedList", breedList);

		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@PostMapping(value = "/animalcare/basic/modify/post", produces = "text/plain;charset=utf-8")
	public ModelAndView basicModifyPost(AnimalModifyRequest modRequest,ModelAndView mnv)throws Exception{
		String url = "/staff/animalcare/basic/modify_success";
		
		//파일삭제
		if(modRequest.getDeleteFile() != null && modRequest.getDeleteFile().length > 0) {
			for(int aino : modRequest.getDeleteFile()) {
				AnimalImgVO animalImg = animalImgDAO.selectAnimalImgByAino(aino);
												
				File deleteFile = new File(animalImg.getPicture(), animalImg.getName());
				
				if(deleteFile.exists()) {
					deleteFile.delete(); //파일삭제
				}
				animalImgDAO.deleteAnimalImgByAino(aino); //DB삭제
			}
		}
		
		// 파일저장
		List<AnimalImgVO> animalImgList = savePictureToAnimalImg(modRequest.getPictureList(), animalImgSavedFilePath);
		
		AnimalVO animal = modRequest.toAnimal();
		ReceiveVO receive = modRequest.toReceive();
		animal.setAnimalImgList(animalImgList);
		
		mnv.addObject("animal", animal);
		mnv.setViewName(url);
		
		animalCareService.modifyAnimal(animal, receive);
		
		return mnv;
	}
	
	@GetMapping("/animalcare/basic/remove")
	public ModelAndView animalRemove(ModelAndView mnv, Long aid)throws Exception{
		String url = "/staff/animalcare/basic/remove_success";
		
		List<AnimalImgVO> animalImgList = animalImgDAO.selectAnimalImgByAid(aid);
		if (animalImgList != null) {
			for (AnimalImgVO animalImg : animalImgList) {
				File target = new File(animalImg.getPicture(), animalImg.getName());
				if (target.exists()) {
					target.delete();
				}
			}
		}
		
		animalCareService.removeAnimal(aid);
		mnv.setViewName(url);
		return mnv;
	}
	
	
	@GetMapping("/animalcare/basic/treatment")
	public ModelAndView treatment(@ModelAttribute(name = "pageMaker") TreatmentPageMaker pagemaker, ModelAndView mnv)throws Exception {
		String url="/staff/animalcare/basic/treatment/treatment";
		
		List<TreatmentVO> treatmentList = treatmentService.selectTreatmentList(pagemaker);
		
		Long aid = pagemaker.getAid();
		AnimalVO animal = animalCareService.animalByAid(aid);
		
		Map<String,Object> dataMap = new HashMap<String,Object>();
		dataMap.put("animal", animal);
		dataMap.put("treatmentList", treatmentList);
		
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		return mnv;
	}
	

	
	@GetMapping("/animalcare/basic/treatment/regist")
	public ModelAndView treatmentRegist(ModelAndView mnv, Long aid)throws Exception {
		String url="/staff/animalcare/basic/treatment/regist";
		
		AnimalVO animal = animalCareService.animalByAid(aid);
		mnv.addObject("animal", animal);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@PostMapping("/animalcare/basic/treatment/regist/post")
	public ModelAndView treatmentRegistPost(ModelAndView mnv, TreatmentRegistRequest regRequest)throws Exception{
		String url="/staff/animalcare/basic/treatment/regist_success";
		
		TreatmentVO treatment = regRequest.toTreatment();
		treatmentService.registTreatment(treatment);
		
		mnv.addObject("treatment", treatment);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@GetMapping("/animalcare/basic/treatment/detail")
	public ModelAndView treatmentDetail(ModelAndView mnv, int tno)throws Exception {
		String url="/staff/animalcare/basic/treatment/detail/detail";
		
		TreatmentVO treatment = treatmentService.selectTreatment(tno);
		Long aid = treatment.getAid();
		AnimalVO animal = animalCareService.animalByAid(aid);
		
		Map<String,Object> dataMap = new HashMap<String,Object>();
		dataMap.put("animal", animal);
		dataMap.put("treatment", treatment);
		
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		return mnv;
	}
	
	@GetMapping("/animalcare/basic/treatment/detail/modify")
	public ModelAndView treatmentModify(ModelAndView mnv, int tno)throws Exception {
		String url="/staff/animalcare/basic/treatment/detail/modify";
		
		TreatmentVO treatment = treatmentService.selectTreatment(tno);
		Long aid = treatment.getAid();
		AnimalVO animal = animalCareService.animalByAid(aid);
		
		Map<String,Object> dataMap = new HashMap<String,Object>();
		dataMap.put("animal", animal);
		dataMap.put("treatment", treatment);
		
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@PostMapping("/animalcare/basic/treatment/detail/modify/post")
	public ModelAndView treatmentModifyPost(ModelAndView mnv, TreatmentModifyRequest Request)throws Exception{
		String url = "/staff/animalcare/basic/treatment/detail/modify_success";
		
		TreatmentVO treatment = Request.toTreatment();
		treatmentService.modifyTreatment(treatment);
		
		mnv.addObject("treatment", treatment);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@GetMapping("/animalcare/basic/treatment/detail/remove")
	public ModelAndView treatmentRemove(ModelAndView mnv, int tno)throws Exception{
		String url = "/staff/animalcare/basic/treatment/detail/remove_success";
		
		TreatmentVO treatment = treatmentService.selectTreatment(tno);
		treatmentService.removeTreatment(tno);
		
		mnv.addObject("treatment", treatment);
		mnv.setViewName(url);
		return mnv;
	}
	
	
	@GetMapping("/animalcare/basic/activity")
	public ModelAndView activity(@ModelAttribute(name = "pageMaker") TreatmentPageMaker pageMaker, ModelAndView mnv )throws Exception {
		String url="/staff/animalcare/basic/activity/activity";
		Long aid = pageMaker.getAid();
		AnimalVO animal = animalCareService.animalByAid(aid);
		
		Map<String,Object> dataMap = new HashMap<String,Object>();
		dataMap.put("animal", animal);
		
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@GetMapping("/animalcare/basic/injection")
	public ModelAndView injection(ModelAndView mnv, Long aid)throws Exception {
		String url="/staff/animalcare/basic/injection/injection";
		
		InjectionVO injection = injectionService.injection(aid);
		AnimalVO animal = animalCareService.animalByAid(aid);
		
		Map<String,Object> dataMap = new HashMap<String,Object>();
		dataMap.put("animal", animal);
		dataMap.put("injection", injection);
		
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		return mnv;
	}	
	
	@GetMapping("/animalcare/basic/injection/regist")
	public ModelAndView injectionRegist(ModelAndView mnv, Long aid)throws Exception {
		String url="/staff/animalcare/basic/injection/regist";
		
		AnimalVO animal = animalCareService.animalByAid(aid);
		InjectionVO injection = injectionService.injection(aid);
		
		Map<String,Object> dataMap = new HashMap<String,Object>();
		dataMap.put("animal", animal);
		dataMap.put("injection", injection);
		
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}	
	
	@PostMapping("/animalcare/basic/injection/regist/post")
	public ModelAndView injectionRegistPost(InjectionRegistRequest regRequest, ModelAndView mnv)throws Exception{
		String url="/staff/animalcare/basic/injection/regist_success";
		
		InjectionVO injection = regRequest.toInjection();
		injectionService.registInjection(injection);
		
		mnv.addObject("injection", injection);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	
	@GetMapping("/animalcare/basic/injection/modify")
	public ModelAndView injectionModify(ModelAndView mnv, Long aid)throws Exception {
		String url="/staff/animalcare/basic/injection/modify";
		
		AnimalVO animal = animalCareService.animalByAid(aid);
		InjectionVO injection = injectionService.injection(aid);
		
		Map<String,Object> dataMap = new HashMap<String,Object>();
		dataMap.put("animal", animal);
		dataMap.put("injection", injection);
		
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}	
	
	@PostMapping("/animalcare/basic/injection/modify/post")
	public ModelAndView injectionModifyPost(InjectionRegistRequest registRequest, ModelAndView mnv)throws Exception{
		String url = "/staff/animalcare/basic/injection/modify_success";
		
		InjectionVO injection = registRequest.toInjection();
		injectionService.modifyInjection(injection);
		
		mnv.addObject("injection", injection);
		mnv.setViewName(url);
		
		return mnv;
	}
	

	
	
}





