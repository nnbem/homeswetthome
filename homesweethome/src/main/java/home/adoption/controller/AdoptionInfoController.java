package home.adoption.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import home.adoption.dto.AdoptionInfoVO;
import home.adoption.service.AdoptionInfoService;

@Controller
@RequestMapping("/member")
public class AdoptionInfoController {

	private AdoptionInfoService adoptInfoService;

	@Autowired
	public AdoptionInfoController(AdoptionInfoService adoptInfoService) {
		this.adoptInfoService = adoptInfoService;
	}
	
	@GetMapping("/mypage/adopt")
	public String getAdoptionInfo(Model model, HttpSession session) throws SQLException {
		String loginUser = (String) session.getAttribute("loginUser");
		
		if(loginUser == null) {
        	return "redirect:/member/login";
        }
		
		List<AdoptionInfoVO> adoptionList = adoptInfoService.getAdoptlist(loginUser);
		
		model.addAttribute("adoptionInfoList", adoptionList);
		
		return "/member/mypage/adopt";
	}
	
}
