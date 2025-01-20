package home.staff.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.josephoconnell.html.HTMLInputFilter;

import home.commons.request.PageMaker;
import home.staff.dao.AnimalCareDAO;
import home.staff.dto.ReceiveVO;
import home.staff.request.ReceiveRegistRequest;
import home.staff.service.ReceiveService;



@Controller
@RequestMapping("/staff")
public class ReceiveController {

    private final ReceiveService receiveService;
    private final AnimalCareDAO animalCareDAO;

    @Autowired
    public ReceiveController(ReceiveService receiveService, AnimalCareDAO animalCareDAO) {
        this.receiveService = receiveService;
        this.animalCareDAO = animalCareDAO;
    }

    @GetMapping("/receive/receive")
    public void receive(@ModelAttribute PageMaker pageMaker, Model model) throws Exception {
        List<ReceiveVO> receiveList = receiveService.list(pageMaker);
        model.addAttribute("receiveList", receiveList);
    }

    @GetMapping("/receive/regist")
    public String receive_regist() {
        return "/staff/receive/regist";
    }

    @PostMapping(value = "/receive/regist", produces = "text/plain;charset=utf-8")
    public String receive_regist_post(ReceiveRegistRequest regRequest, ModelAndView mnv) throws Exception {
        String url = "/staff/receive/regist_success";

        ReceiveVO receive = regRequest.toReceiveVO();
        receive.setSpot(HTMLInputFilter.htmlSpecialChars(receive.getSpot()));
        receive.setCantername(HTMLInputFilter.htmlSpecialChars(receive.getCantername()));
        receive.setBreed(HTMLInputFilter.htmlSpecialChars(receive.getBreed()));
        receive.setKind(HTMLInputFilter.htmlSpecialChars(receive.getKind()));
        receive.setGender(HTMLInputFilter.htmlSpecialChars(receive.getGender()));

        receiveService.regist(receive);
        return url;
    }

    @GetMapping("/receive/detail")
    public String receive_detail(@RequestParam("rcno") int rcno, Model model, PageMaker pageMaker, Object regdate) throws Exception {
        String url = "/staff/receive/detail";

        ReceiveVO receive = receiveService.getReceive(rcno);
        if (receive == null) {
            model.addAttribute("errorMessage", "No data found for rcno: " + rcno);
            return "errorPage";
        }

        model.addAttribute("receive", receive);
        return url;
    }
}