package home.staff.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import home.commons.request.PageMaker;
import home.staff.dto.ReserveDetailVO;
import home.staff.dto.ReserveVO;
import home.staff.service.ReserveService;

@Controller
@RequestMapping("/staff")
public class ReserveController {
	
	private ReserveService reserveService;
	
	@Autowired
	public ReserveController(ReserveService reserveService) {
		this.reserveService = reserveService;
	}
	
	@GetMapping("/reserve")
	public String List(@RequestParam(value = "rsno", required = false) Integer rsno,PageMaker pageMaker, Model model) throws Exception {
		List<ReserveVO> reserveList = reserveService.list(pageMaker);
		
		ReserveDetailVO reserveDetail = null;
	    if (rsno != null) {
	        reserveDetail = reserveService.getReserveDetail(rsno);
	    }
	    
		model.addAttribute("reserveList", reserveList);
		model.addAttribute("reserveDetail", reserveDetail);
		return "/staff/reserve/reserve";
	}


	@GetMapping("/reserve/detail")
	public String reserve_detail(@RequestParam(value = "rsno", required = true) Integer rsno, Model model) throws SQLException {
	    ReserveVO reserve = reserveService.getReserve(rsno);
	    ReserveDetailVO reserveDetail = reserveService.getReserveDetail(rsno);
	    
	    if (reserve == null) {
	    	model.addAttribute("errorMessage", "해당 rsno(" + rsno + ")에 대한 데이터를 찾을 수 없습니다.");
	    	return "errorPage";
	    }
	    model.addAttribute("reserve", reserve);
	    model.addAttribute("reserveDetail", reserveDetail);
	    return "/staff/reserve/detail";
	}
	
	@PostMapping("/reserve/update_success")
	public String updateReserveSuccess(@RequestParam(value = "rsno", required = true) Integer rsno, RedirectAttributes rttr) {
		try {
			if (rsno == null) {
				rttr.addFlashAttribute("error", "방문예약번호가 유효하지 않습니다.");
				return "redirect:/staff/reserve";
			}
			
			ReserveVO reserve = new ReserveVO();
			reserve.setRsno(rsno);
			reserve.setStatus("승인");
			
			reserveService.update(reserve);
			
			rttr.addFlashAttribute("message", "방문예약 신청이 승인되었습니다.");
			return "redirect:/staff/reserve";
		} catch (Exception e) {
			e.printStackTrace();
			rttr.addFlashAttribute("error", "승인 처리 중 오류가 발생했습니다.");
			return "redirect:/staff/reserve";
		}
	}
	
	@PostMapping("/reserve/update_fail")
	public String updateReserveFail(@RequestParam("rsno") int rsno, RedirectAttributes rttr) {
		try {
			ReserveVO reserve = new ReserveVO();
			reserve.setRsno(rsno);
			reserve.setStatus("반려");
			
			reserveService.update(reserve);
			
			rttr.addFlashAttribute("message", "방문예약 신청이 반려되었습니다.");
			return "redirect:/staff/reserve";
		} catch (Exception e) {
			e.printStackTrace();
			rttr.addFlashAttribute("error", "반려 처리 중 오류가 발생했습니다.");
			return "redirect:/staff/reserve";
		}
	}

}
