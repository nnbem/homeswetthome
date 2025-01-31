package home.member.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import home.commons.exception.NotExistPictureFileException;
import home.member.dto.MemberVO;
import home.member.request.MemberModifyRequest;
import home.member.service.SearchMemberService;

@Controller
@RequestMapping("/member")
public class MypageController {

    private SearchMemberService memberService;

    @Autowired
    public MypageController(SearchMemberService memberService) {
        this.memberService = memberService;
    }

    // 마이페이지 (회원정보 비활성화 페이지)
    @GetMapping("/mypage/deactivation")
    public ModelAndView mypageModify(HttpSession session, ModelAndView mnv) throws Exception {
        String url = "/member/mypage/deactivation";

        // 로그인된 회원 ID 가져오기
        String loginUser = (String) session.getAttribute("loginUser");
        if (loginUser == null) {
            mnv.setViewName("redirect:/member/login");
            return mnv;
        }

        MemberVO member = memberService.getMember(loginUser);
        if (member == null) {
            mnv.setViewName("redirect:/member/login");
            return mnv;
        }

        mnv.addObject("member", member);
        mnv.setViewName(url);
        return mnv;
    }

    // 비밀번호 확인 후 회원정보 수정 페이지로 이동
    @PostMapping("/mypage/deactivation")
    public String checkPassword(@RequestParam("password") String password, HttpSession session, Model model) {
        String mid = (String) session.getAttribute("loginUser");

        if (mid == null) {
            model.addAttribute("errorMessage", "로그인이 필요합니다.");
            return "redirect:/member/login";
        }

        boolean isPasswordCorrect = memberService.checkPassword(mid, password);
        if (isPasswordCorrect) {
            return "redirect:/member/mypage/deactivation/detail";
        } else {
            model.addAttribute("errorMessage", "비밀번호가 일치하지 않습니다.");
            return "/member/mypage/deactivation";
        }
    }

    // 회원정보 상세 페이지
    @GetMapping("/mypage/deactivation/detail")
    public ModelAndView detail(HttpSession session, ModelAndView mnv) throws Exception {
        String loginUser = (String) session.getAttribute("loginUser");

        if (loginUser == null) {
            mnv.setViewName("redirect:/member/login");
            return mnv;
        }

        MemberVO member = memberService.getMember(loginUser);
        if (member == null) {
            mnv.setViewName("redirect:/member/login");
            return mnv;
        }

        mnv.addObject("member", member);
        mnv.setViewName("member/mypage/deactivation/detail");
        return mnv;
    }

    // 회원정보 수정 폼
    @GetMapping("/mypage/deactivation/modify")
    public ModelAndView modifyForm(HttpSession session, ModelAndView mnv) throws Exception {
        String url = "/member/mypage/deactivation/modify";

        String loginUser = (String) session.getAttribute("loginUser");
        if (loginUser == null) {
            mnv.setViewName("redirect:/member/login");
            return mnv;
        }

        MemberVO member = memberService.getMember(loginUser);
        mnv.addObject("member", member);
        mnv.setViewName(url);
        return mnv;
    }

    // 회원정보 수정 후 detail 페이지로 이동
    @PostMapping(value = "/mypage/deactivation/modify", produces = "text/plain;charset=utf-8")
	public ModelAndView modify(MemberModifyRequest modifyRequest, ModelAndView mnv) throws Exception {
		String url = "/member/mypage/deactivation/modify_success";
		
		MemberVO member = modifyRequest.toMemberVO();
		MultipartFile multi = modifyRequest.getPicture();
		String oldPicture = memberService.getMember(member.getMid()).getPicture();
		
		//파일 저장 및 삭제
		try {
			String fileName = savePicture(oldPicture, multi);
			member.setPicture(fileName);
		}catch (NotExistPictureFileException e) {
			member.setPicture(oldPicture);
		}catch (Exception e) {
			url = "/error/500";
			e.printStackTrace();
		}
		
		// DB 수정
		memberService.modify(member);
		
		mnv.addObject("mid",member.getMid());
		mnv.setViewName(url);
		return mnv;
	}


    @Resource(name = "picturePath")
    private String picturePath;

    // 프로필 사진 가져오기
    @GetMapping("/member/getPicture")
    @ResponseBody
    public ResponseEntity<byte[]> getPicture(HttpSession session) {
        String loginUser = (String) session.getAttribute("loginUser");
        if (loginUser == null) {
            return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
        }

        MemberVO member;
        try {
            member = memberService.getMember(loginUser);
        } catch (SQLException e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }

        if (member == null || member.getPicture() == null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }

        String picture = member.getPicture();
        String imgPath = this.picturePath;

        try (InputStream in = new FileInputStream(new File(imgPath, picture))) {
            return new ResponseEntity<>(IOUtils.toByteArray(in), HttpStatus.OK);
        } catch (IOException e) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // 프로필 사진 저장
    public String savePicture(String oldPicture, MultipartFile multi)
            throws NotExistPictureFileException, IllegalStateException, IOException {

        if (multi == null || multi.isEmpty() || multi.getSize() > 1024 * 1024 * 1) {
            throw new NotExistPictureFileException();
        }

        String fileName;
        String uploadPath = this.picturePath;

        String uuid = UUID.randomUUID().toString().replace("-", "");
        fileName = uuid + "$$" + multi.getOriginalFilename();
        File storeFile = new File(uploadPath, fileName);

        storeFile.mkdirs();
        multi.transferTo(storeFile);

        if (oldPicture != null && !oldPicture.isEmpty()) {
            File oldFile = new File(uploadPath, oldPicture);
            if (oldFile.exists()) {
                oldFile.delete();
            }
        }

        return fileName;
    }
}
