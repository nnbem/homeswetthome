package home.staff.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import home.commons.request.PageMaker;
import home.staff.dto.ReceiveVO;
import home.staff.service.ReceiveService;



@Controller
@RequestMapping("/staff")
public class ReceiveController {
   
   private ReceiveService receiveService;
   @Autowired
   private ReceiveController(ReceiveService receiveService) {
      this.receiveService = receiveService;
   }
   
  
   
   @GetMapping("/receive/receive")
   public void receive(@ModelAttribute PageMaker pageMaker, Model model) throws Exception{
      List<ReceiveVO> receiveList = receiveService.list(pageMaker);
      model.addAttribute("receiveList", receiveList);
      
   }
   @GetMapping("/receive/regist")
	public String receive_regist() {
		String url = "staff/receive/regist";
		return url;
	}
   @GetMapping("/receive/tetail")
	public String receive_detail() {
		String url = "staff/receive/detail";
		return url;
	}
   
}
