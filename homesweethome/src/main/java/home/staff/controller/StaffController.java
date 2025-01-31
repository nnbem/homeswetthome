package home.staff.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import home.commons.request.PageMaker;
import home.member.dto.MemberVO;
import home.member.dto.Member_ListVO;
import home.member.service.Member_ListService;
import home.member.service.SearchMemberService;

@Controller
@RequestMapping("/staff")
public class StaffController {

	private SearchMemberService memberService;
	private Member_ListService member_ListService;
	
	@Autowired
    public StaffController(SearchMemberService memberService, Member_ListService member_ListService) {
		this.memberService = memberService;
		this.member_ListService = member_ListService;
	}

	
	@GetMapping("/main")
	public String staff() {
		String url = "/staff/main";
		return url;
	}

	@GetMapping("/login")
	public String loginget(@ModelAttribute(name = "retUrl") String retUrl, HttpServletResponse response)throws Exception{
		String url = "staff/commons/loginForm";
		response.setStatus(302);
		return url;
	}
	@PostMapping("/login")
	public String loginpost(
	    @RequestParam("username") String username,
	    @RequestParam("password") String password,
	    HttpSession session,
	    HttpServletResponse response,
	    Model model
	) throws Exception {
	    String url = "redirect:/staff/home"; // 로그인 성공 시 이동할 기본 페이지

	    // 로그인 로직 (임시 검증 로직 사용)
	    if (username.equals("admin") && password.equals("password123")) {
	        session.setAttribute("loggedInUserId", username); // 세션에 사용자 ID 저장
	        return url;
	    } else {
	        // 로그인 실패 시 처리
	        model.addAttribute("loginError", "Invalid username or password.");
	        return "staff/commons/loginForm";
	    }
	}
	
	@GetMapping("/index")
	public String index() {
		String url = "/staff/main";
		return url;
	}


	@GetMapping("/accessDenied")
	public void accessDenied() {}
	
	@GetMapping("/loginTimeOut")
	public String loginTimeOut(Model model) throws Exception{
		String url = "/staff/commons/loginSessionOut";
		model.addAttribute("message","세션이 만료되었습니다.\\n다시 로그인 해 주세요");
		return url;
	}
	
	@GetMapping("/loginExpired")
	public String loginExpired(Model model)throws Exception{
		String url = "/staff/commons/loginSessionOut";
		model.addAttribute("message", "다른 장치에서 중복 로그인이 확인되었습니다.");
		return url;
	}
	
	
	

	@GetMapping("/member/list")
    public ModelAndView list(@ModelAttribute PageMaker pageMaker, ModelAndView mnv) throws Exception {
    	String url = "/staff/member/list";
    	// System.out.println(pageMaker);
    	
    	List<Member_ListVO> member_List = member_ListService.list(pageMaker);
    	
    	mnv.addObject("member_List", member_List);
    	mnv.setViewName(url);
    	return mnv;
    }
    
    @PostMapping("/member/list")
    public ModelAndView member_list(@ModelAttribute PageMaker pageMaker, ModelAndView mnv) throws Exception {
        return list(pageMaker, mnv);
    }

    @GetMapping("/member/detail")
    public String member_detail(String mid, Model model, PageMaker pageMaker) throws Exception {
    	
    	MemberVO member = memberService.getMember(mid);
    	member.setPicture("/resources/image/member/" + member.getMid() + ".jpg");
    	
    	List<Member_ListVO> member_List = member_ListService.list(pageMaker);
    	
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

    	
    	model.addAttribute("member", member);
    	return "staff/member/detail";
    }
    



	

	@GetMapping("/graceperiod")
	public String graceperiod() {
		String url = "staff/graceperiod/graceperiod";
		return url;
	}

	@GetMapping("/graceperiod/detail")
	public String graceperiod_detail() {
		String url = "staff/graceperiod/detail";
		return url;
	}
}
