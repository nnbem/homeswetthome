package home.member.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import home.member.dto.MemberVO;
import home.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class LoginController {

   private MemberService memberService;
   
   @Autowired
   public LoginController(MemberService memberService) {
      this.memberService = memberService;
   }

   @GetMapping("/login")
   public String loginGet(@ModelAttribute(name = "retUrl") String retUrl, HttpServletResponse response) {
      String url = "/member/login";
      response.setStatus(302);
      
      return url;
   }
   
   @PostMapping("/login")
   public String login(String mid, String pwd, Model model, HttpSession session) {
      String url = "/member/login/login_fail";
      
      MemberVO member=null;
      System.out.println(mid);
      try {
         member = memberService.getMember(mid);
      } catch (SQLException e) {
         return "/error/500";
      }
      
      String message = null;
      
      if(member != null) {
         if(pwd.equals(member.getPwd()) ) {
            url = "/member/login/login_success";
         } else {            
            message = "비밀번호가 일치하지 않습니다.";
         }
         
      }else {
         message = "아이디가 일치하지 않습니다.";                  
      }
      
      model.addAttribute("msg",message);
      
      return url;
   }

}