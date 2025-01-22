package home.member.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.josephoconnell.html.HTMLInputFilter;

import home.commons.request.PageMaker;
import home.member.dto.SharingVO;
import home.member.request.SharingModifyRequest;
import home.member.request.SharingRegistRequest;
import home.member.service.SharingService;

@Controller
@RequestMapping("/member")
public class SharingController {

	private SharingService sharingService;

	@Autowired
	public SharingController(SharingService sharingService) {
		this.sharingService = sharingService;
	}
	
	@GetMapping("/board/main")
    public String board_main() {
        return "member/board/main";
    }
	
	@GetMapping("/board/sharing")
    public void sharing(@ModelAttribute PageMaker pageMaker, Model model) throws Exception {
        List<SharingVO> sharingList = sharingService.list(pageMaker);
        
        model.addAttribute("sharingList", sharingList);
    }
	
	@GetMapping("board/sharing/regist")
	public void registForm() {}
	
	@PostMapping("/board/sharing/regist")
    public String registPost(@ModelAttribute SharingRegistRequest regRequest, HttpSession session) throws Exception{
        String url = "/member/board/sharing/regist_success";
        
        String loginUser = (String) session.getAttribute("loginUser");
        if(loginUser == null) {
        	return "redirect:/member/login";
        }
        
    	SharingVO sharing = regRequest.toSharing();
    	sharing.setTitle(HTMLInputFilter.htmlSpecialChars(sharing.getTitle()));
    	
    	sharingService.regist(sharing);
    	
    	return url;
    }
	
	@GetMapping("/board/sharing/detail")
    public String sharing_detail(int sno, Model model, RedirectAttributes redirectAttributes) throws Exception {
        String url = "member/board/sharing/detail";

        SharingVO sharing = sharingService.getsharing(sno);
        if (sharing == null) {
            // 데이터가 없는 경우 처리
            model.addAttribute("errorMessage", "No data found for sno: " + sno);
            return "/error/500"; // 에러 페이지로 이동
        }
        
        model.addAttribute("sharing", sharing);
        
        redirectAttributes.addFlashAttribute("sno", sharing.getSno());

        // 정상적으로 상세 페이지로 이동
        return url;
    }
	
	@GetMapping("/board/sharing/modify")
	public void modifyGet(int sno, Model model) throws Exception {
		SharingVO sharing = sharingService.getsharing(sno);
		model.addAttribute("sharing", sharing);
	}
	
	@PostMapping("/board/sharing/modify")
	public String modifyPost(SharingModifyRequest modifyRequest, Model model) throws Exception {
	    String url = "/member/board/sharing/modify_success";

	    SharingVO sharing = modifyRequest.toSharingVO();
	    sharing.setSno(modifyRequest.getSno());
	    
	    // System.out.println("수정된 글번호: " + modifyRequest.getSno());
	    
	    sharing.setTitle(HTMLInputFilter.htmlSpecialChars(sharing.getTitle()));
	    sharingService.modify(sharing);

	    // sno 값을 Model에 추가
	    model.addAttribute("sno", sharing.getSno());
	    return url;
	}


	
	
	@Resource(name="summernotePath")
	private String summernotePath;
	
	@GetMapping("/board/sharing/remove")
	public String remove(@RequestParam("sno") int sno, RedirectAttributes rttr) throws Exception {
	    sharingService.remove(sno);
	    rttr.addFlashAttribute("message", "게시글이 성공적으로 삭제되었습니다.");
	    return "redirect:/member/board/sharing";
	}



}
