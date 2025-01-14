package home.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import home.commons.service.MenuMemberService;
import home.member.dto.MenuMemberVO;

@RestController
@RequestMapping("/menu")
public class MenuMemberController {
	
	@Autowired
	private MenuMemberService menuMemberService;
	
	@GetMapping("/subMenu")
	public List<MenuMemberVO> subMenuToJSON(String mcode) throws Exception {
		List<MenuMemberVO> menuList = menuMemberService.getSubMenuMemberList(mcode);
		return menuList;
	}

}

