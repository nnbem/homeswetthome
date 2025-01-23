package home.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import home.member.dto.MypageMenuVO;
import home.member.service.MypageMenuService;

@RestController
@RequestMapping("/menu")
public class MypageMenuController {

	@Autowired
	private MypageMenuService mypageMenuService;
	
	@GetMapping("/subMypageMenu")
	public List<MypageMenuVO> subMenuToJSON(String mcode) throws Exception{
		List<MypageMenuVO> menuList = mypageMenuService.gettSubMypageMenuList(mcode);
		return menuList;
	}
}
