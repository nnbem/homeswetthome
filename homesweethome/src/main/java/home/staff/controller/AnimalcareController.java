package home.staff.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import home.commons.request.AnimalCarePageMaker;
import home.staff.dto.AnimalCareVO;
import home.staff.service.AnimalCareService;

@Controller
@RequestMapping("/staff")
public class AnimalcareController {
	
	
	private AnimalCareService animalCareService;
	@Autowired
	public AnimalcareController(AnimalCareService animalCareService) {
		this.animalCareService = animalCareService;
	}
	
	@GetMapping("/animalcare")
	public ModelAndView animalcare(@ModelAttribute(name = "pageMaker") AnimalCarePageMaker pageMaker, ModelAndView mnv)throws Exception {
		String url="/staff/animalcare/animalcare";
		
		
		System.out.println(pageMaker);
		
		
		List <AnimalCareVO> animalCareList = animalCareService.list(pageMaker);
		mnv.addObject("animalCareList",animalCareList);
		mnv.setViewName(url);
		
		
		return mnv;
	}
	
	@GetMapping("/animalcare/basic")
	public String manager() {
		String url="/staff/animalcare/basic/basic";
		return url;
	}
	
	@GetMapping("/animalcare/basic/modify")
	public String basicRegist() {
		String url="/staff/animalcare/basic/modify";
		return url;
	}
	
	@GetMapping("/animalcare/basic/treatment")
	public String treatment() {
		String url="/staff/animalcare/basic/treatment/treatment";
		return url;
	}
	
	@GetMapping("/animalcare/basic/treatment/regist")
	public String treatmentRegist() {
		String url="/staff/animalcare/basic/treatment/regist";
		return url;
	}
	
	@GetMapping("/animalcare/basic/treatment/detail")
	public String treatmentDetail() {
		String url="/staff/animalcare/basic/treatment/detail/detail";
		return url;
	}
	
	@GetMapping("/animalcare/basic/treatment/detail/modify")
	public String treatmentModify() {
		String url="/staff/animalcare/basic/treatment/detail/modify";
		return url;
	}
	
	@GetMapping("/animalcare/basic/activity")
	public String activity() {
		String url="/staff/animalcare/basic/activity/activity";
		return url;
	}
	
	@GetMapping("/animalcare/basic/activity/detail")
	public String activityDetail() {
		String url="/staff/animalcare/basic/activity/detail/detail";
		return url;
	}
	
	@GetMapping("/animalcare/basic/activity/regist")
	public String activityRegist() {
		String url="/staff/animalcare/basic/activity/regist";
		return url;
	}
	
	@GetMapping("/animalcare/basic/activity/detail/modify")
	public String activityModify() {
		String url="/staff/animalcare/basic/activity/detail/modify";
		return url;
	}
	
	@GetMapping("/animalcare/basic/injection")
	public String injection() {
		String url="/staff/animalcare/basic/injection/injection";
		return url;
	}	
	
	@GetMapping("/animalcare/basic/injection/regist")
	public String injectionRegist() {
		String url="/staff/animalcare/basic/injection/regist";
		return url;
	}	
	
	@GetMapping("/animalcare/basic/injection/modify")
	public String injectionModify() {
		String url="/staff/animalcare/basic/injection/modify";
		return url;
	}	
}
