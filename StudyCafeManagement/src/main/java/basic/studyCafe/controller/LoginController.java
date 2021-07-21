package basic.studyCafe.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mybatis.logging.Logger;
import org.mybatis.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import basic.studyCafe.service.MemberService;
import basic.studyCafe.service.MemberServiceImpl;
import basic.studyCafe.vo.Member;
import basic.studyCafe.vo.MemberVO;

@Controller
@RequestMapping("/common/*")
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "/LoginMain", method = RequestMethod.GET)
	public String LoginMain() {
		return "common/LoginMain";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String Login(@RequestParam("id") String id, @RequestParam("password") String password, HttpSession session,
			HttpServletResponse response) throws IOException {
		String path = " ";
		MemberVO member = new MemberVO();

		member.setUser_id(id);
		member.setUser_password(password);

		int result = memberService.checkMember(member, session);

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		
		if (result == 1) {
			path = "common/LoginMain";
		} else {
			out.println("<script>alert('경고!! 입력하신 정보가 일치하지 않습니다.');</script>");
			out.flush();
			path = "common/Main";
		}

		return path;
	}

	@RequestMapping("main")
	public String main() {
		return "common/main";
	}

	@RequestMapping(value = "/logout")
	public String Logout(HttpSession session) {
		memberService.logoutMember(session);
		return "common/Main";
	}

	@RequestMapping(value = "/JoinForm", method = RequestMethod.GET)
	public String JoinForm() {
		return "common/JoinForm";
	}

	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String Join(MemberVO member) {
		memberService.joinMember(member);
		return "redirect:/main";
	}

	@RequestMapping(value = "/back")
	public String BackLogin() {
		return "common/LoginMain";
	}

	@RequestMapping(value = "/findIdForm", method = RequestMethod.GET)
	public String FindId() {
		return "common/FindIdForm";
	}

	@RequestMapping(value = "/findIdForm", method = RequestMethod.POST)
	public ModelAndView CheckId(@RequestParam("user_name") String user_name,
			@RequestParam("user_phone") String user_phone, HttpServletResponse response) throws IOException {
		ModelAndView mav = new ModelAndView();
		MemberVO member = new MemberVO();

		member.setUser_name(user_name);
		member.setUser_phone(user_phone);

		int result = memberService.checkMemberId(member);
		MemberVO forIdMember = memberService.getFindIdMember(member);
		mav.addObject("forIdMember", forIdMember);

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		if (result == 1) {
			mav.setViewName("common/SuccessFindId");
		} else {
			out.println("<script>alert('경고!! 입력하신 정보가 일치하지 않습니다.');</script>");
			out.flush();
			mav.setViewName("common/FindIdForm");
		}
		return mav;
	}

	@RequestMapping(value = "/findPasswordForm", method = RequestMethod.GET)
	public String FindPassword() {
		return "common/FindPasswordForm";
	}

	@RequestMapping(value = "/findPasswordForm", method = RequestMethod.POST)
	public ModelAndView CheckPassword(@RequestParam("user_name") String user_name,
			@RequestParam("user_id") String user_id, HttpServletResponse response) throws IOException {
		ModelAndView mav = new ModelAndView();
		MemberVO member = new MemberVO();

		member.setUser_name(user_name);
		member.setUser_id(user_id);

		int result = memberService.checkMemberPassword(member);
		MemberVO forPasswordMember = memberService.getFindPasswordMember(member);
		mav.addObject("forPasswordMember", forPasswordMember);

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		if (result == 1) {
			mav.setViewName("common/main");
		} else {
			out.println("<script>alert('경고!! 입력하신 정보가 일치하지 않습니다.');</script>");
			out.flush();
			mav.setViewName("common/FindPasswordForm");
		}
		return mav;

	}

}
