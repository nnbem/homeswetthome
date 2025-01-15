package home.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class AnimalController {
	
	@GetMapping("/animal")
	public String animal() {
		String url="/member/animal/animal";
		return url;		
	}
	@GetMapping("/animal/announcement")
	public String animalAnnouncement() {
		String url="/member/animal/announcement/announcement";
		return url;		
	}
	@GetMapping("/animal/announcement/detail")
	public String animalAnnouncementDetail() {
		String url="/member/animal/announcement/detail";
		return url;		
	}
	
	@GetMapping("/animal/care")
	public String animalCare() {
		String url="/member/animal/care/care";
		return url;		
	}
	@GetMapping("/animal/care/detail")
	public String animalCareDetail() {
		String url="/member/animal/care/detail";
		return url;		
	}
	
	@GetMapping("/animal/completion")
	public String animalCompletion() {
		String url="/member/animal/completion/completion";
		return url;		
	}
	@GetMapping("/animal/completion/detail")
	public String animalCompletionDetail() {
		String url="/member/animal/completion/detail";
		return url;		
	}
	@GetMapping("/animal/possibility")
	public String animalPossibility() {
		String url="/member/animal/possibility/possibility";
		return url;		
	}
	@GetMapping("/animal/possibility/detail")
	public String animalPossibilityDetail() {
		String url="/member/animal/possibility/detail";
		return url;		
	}
	
}
