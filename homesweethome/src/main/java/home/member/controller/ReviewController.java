package home.member.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.josephoconnell.html.HTMLInputFilter;

import home.commons.request.PageMaker;
import home.member.dto.ReviewVO;
import home.member.request.ReviewModifyRequest;
import home.member.request.ReviewRegistRequest;
import home.member.service.ReviewService;

@Controller
@RequestMapping("/member/board")
public class ReviewController {
	private ReviewService reviewService;
	
	@Autowired
	public ReviewController(ReviewService reviewService) {
		this.reviewService = reviewService;
	}
	
	@GetMapping("/review")
	public ModelAndView review(@ModelAttribute(name = "pageMaker") PageMaker pageMaker, ModelAndView mnv)throws Exception {
		String url = "/member/board/review/review";
		
		List<ReviewVO> reviewList = reviewService.selectReivewList(pageMaker);
		for(ReviewVO review : reviewList) {
			int ano = review.getAno();			
			String mid = reviewService.getMid(ano);
			review.setMid(mid);
		}
		
		mnv.addObject("reviewList", reviewList);
		mnv.setViewName(url);
		return mnv;
	}
	
	@GetMapping("/review/detail")
	public ModelAndView reviewDetail(int rno, ModelAndView mnv, HttpSession session)throws Exception {
		String url = "/member/board/review/detail";
		
		ServletContext ctx = session.getServletContext();
		String member = (String)session.getAttribute("loginUser");
		String key = member+rno;

		ReviewVO review = null;
		
		if(ctx.getAttribute(key)!=null) {
			review = reviewService.getReview(rno);
		}else { 
			review = reviewService.detail(rno); }
		 
		int ano = review.getAno();
		String mid = reviewService.getMid(ano);
		review.setMid(mid);
		
		
		mnv.addObject("review", review);
		mnv.setViewName(url);
		return mnv;
	}
	
	@GetMapping("/review/regist")
	public String registForm()throws Exception {
		String url = "/member/board/review/regist";
		return url;
	}
	
	@PostMapping("/review/regist")
    public String registPost(@ModelAttribute ReviewRegistRequest regRequest, HttpSession session) throws Exception{
        String url = "/member/board/review/regist_success";
        
        String loginUser = (String) session.getAttribute("loginUser");
        if(loginUser == null) {
        	return "redirect:/member/login";
        }
        
    	ReviewVO review = regRequest.toReview();
    	review.setTitle(HTMLInputFilter.htmlSpecialChars(review.getTitle()));
    	
    	String mid = review.getMid();
    	review.setAno(reviewService.getAno(mid));
    	
    	reviewService.registReview(review);
    	
    	return url;
    }
	
	@GetMapping("/review/modify")
	public ModelAndView modifyGet(int rno, ModelAndView mnv) throws Exception {
		String url = "/member/board/review/modify";
		ReviewVO review = reviewService.getReview(rno);
		mnv.addObject("review", review);
		mnv.setViewName(url);
		return mnv;
	}
	
	@PostMapping("/review/modify")
	public String modifyPost(ReviewModifyRequest modifyRequest, Model model) throws Exception {
	    String url = "/member/board/review/modify_success";

	    ReviewVO review = modifyRequest.toReview();
	    review.setRno(modifyRequest.getRno());
	    
	    // System.out.println("수정된 글번호: " + modifyRequest.getSno());
	    
	    review.setTitle(HTMLInputFilter.htmlSpecialChars(review.getTitle()));
	    reviewService.modifyReview(review);

	    // sno 값을 Model에 추가
	    model.addAttribute("rno", review.getRno());
	    return url;
	}
	
	@GetMapping("/review/remove")
	public String remove(@RequestParam("rno") int rno, RedirectAttributes rttr) throws Exception {
	    reviewService.removeReview(rno);
	    rttr.addFlashAttribute("message", "게시글이 성공적으로 삭제되었습니다.");
	    return "redirect:/member/board/review";
	}
	
	
	@Resource(name="summernotePath")
	private String summernotePath;
	
}















