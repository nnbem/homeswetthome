package home.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import home.member.dto.MenuMemberVO;
import home.member.dto.MypageMenuVO;
import home.member.service.MenuMemberService;
import home.member.service.MypageMenuService;

@Controller
@RequestMapping("/member")
public class MainController {
	
	@Autowired
	private MenuMemberService menuMemberService;
	
	@Autowired
	private MypageMenuService mypageMenuService;
	
	
	
	@GetMapping("/main/guest")
	public String guest(String mcode, Model model) throws Exception {
		String url = "/member/guest_main";
		
		return url;
	}

	@GetMapping("/main")
	public String member_main() {
		String url = "/member/main";
		return url;
	}
	
	@GetMapping("/subMenu")
	@ResponseBody
	public ResponseEntity<List<MenuMemberVO>> subMenu(String mcode)throws Exception{
		ResponseEntity<List<MenuMemberVO>> entity = null;
		
		List<MenuMemberVO> subMenuList = menuMemberService.getSubMenuMemberList(mcode);
		
		System.out.println(subMenuList);
		
		entity = new ResponseEntity<List<MenuMemberVO>>(subMenuList,HttpStatus.OK);
		return entity;
	}
	
	@GetMapping("/subMypageMenu")
	@ResponseBody
	public ResponseEntity<List<MypageMenuVO>> subMypageMenu(String tcode) throws Exception {
		ResponseEntity<List<MypageMenuVO>> entity = null;
		
		List<MypageMenuVO> subMypageMenuList = mypageMenuService.gettSubMypageMenuList(tcode);
		
		System.out.println(subMypageMenuList);
		
		entity = new ResponseEntity<List<MypageMenuVO>>(subMypageMenuList,HttpStatus.OK);
		return entity;
	}
	
	@GetMapping("/content")
	public String content() {
		String url="/member/main/content";
		return url;
	}
	
	@GetMapping("/main/iframe")
	public String iframe(Model model) throws Exception{
		String url="/member/main/Main";
		
		List<MenuMemberVO> menuList = menuMemberService.getMainMenuMemberList();
		model.addAttribute("menuList", menuList);
		
		List<MypageMenuVO> mypageMenuList = mypageMenuService.getsMypageMenuList();
		model.addAttribute("mypageMenuList", mypageMenuList);
		
		
		return url;
	}
}
