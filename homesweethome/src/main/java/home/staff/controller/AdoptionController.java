package home.staff.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import home.commons.request.PageMaker;
import home.staff.dto.AdoptionDetailVO;
import home.staff.dto.AdoptionVO;
import home.staff.service.AdoptionService;

@Controller
@RequestMapping("/staff")
public class AdoptionController {
	
	private AdoptionService adoptionService;
	
	@Autowired
	public AdoptionController(AdoptionService adoptionService) {
		this.adoptionService = adoptionService;
	}
	
	@GetMapping("/adoption")
	public String adoption(@ModelAttribute PageMaker pageMaker, Model model) throws Exception {
		List<AdoptionVO> adoptionList = adoptionService.list(pageMaker);
		model.addAttribute("adoptionList", adoptionList);
		return "staff/adoption/adoption";
	}

	@GetMapping("/adoption/detail")
	public String adoptionDetail(@RequestParam(value = "ano", required = true) Integer ano, Model model) throws SQLException {
		 System.out.println("Received ANO: " + ano);

		    // Adoption 데이터 조회
		    AdoptionVO adoption = adoptionService.getAdoption(ano);
		    AdoptionDetailVO adoptionDetail = adoptionService.getAdoptionDetail(ano);

		    if (adoption == null || adoptionDetail == null) {
		        System.out.println("Data not found for ANO: " + ano);
		        model.addAttribute("errorMessage", "해당 데이터를 찾을 수 없습니다.");
		        return "adoption/error"; // 에러 페이지로 이동
		    }

		    System.out.println("Data found for ANO: " + ano);

		    // JSP로 데이터 전달
		    model.addAttribute("adoption", adoption);
		    model.addAttribute("adoptionDetail", adoptionDetail);

		    return "staff/adoption/detail"; // JSP 경로
    }
	
	@PostMapping("/adoption/update_success")
	public String updateAdoptionSuccess(@RequestParam(value = "ano", required = true) Integer ano, RedirectAttributes rttr) {
	    try {
	        if (ano == null) {
	            rttr.addFlashAttribute("error", "입양 번호가 유효하지 않습니다.");
	            return "redirect:/staff/adoption";
	        }

	        // 상태를 "승인"으로 설정하고 eid 기본값 설정
	        AdoptionVO adoption = new AdoptionVO();
	        adoption.setAno(ano);
	        adoption.setStatus("승인");


	        adoptionService.update(adoption);

	        rttr.addFlashAttribute("message", "입양 신청이 승인되었습니다.");
	        return "redirect:/staff/adoption";
	    } catch (Exception e) {
	        e.printStackTrace();
	        rttr.addFlashAttribute("error", "승인 처리 중 오류가 발생했습니다.");
	        return "redirect:/staff/adoption";
	    }
	}


	@PostMapping("/adoption/update_fail")
	public String updateAdoptionFail(@RequestParam("ano") int ano, RedirectAttributes rttr) {
	    try {
	        // 상태를 "반려"로 설정
	        AdoptionVO adoption = new AdoptionVO();
	        adoption.setAno(ano);
	        adoption.setStatus("반려");

	        // Service를 통해 업데이트 실행
	        adoptionService.update(adoption);

	        // 성공 메시지 추가
	        rttr.addFlashAttribute("message", "입양 신청이 반려되었습니다.");
	        return "redirect:/staff/adoption"; // 목록 페이지로 리다이렉트
	    } catch (Exception e) {
	        e.printStackTrace();
	        rttr.addFlashAttribute("error", "반려 처리 중 오류가 발생했습니다.");
	        return "redirect:/staff/adoption"; // 오류 발생 시 목록 페이지로 리다이렉트
	    }
	}

	
}
