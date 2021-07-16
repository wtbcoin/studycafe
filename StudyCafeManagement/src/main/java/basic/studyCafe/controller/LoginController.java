package basic.studyCafe.controller;

import org.mybatis.logging.Logger;
import org.mybatis.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import basic.studyCafe.service.MemberService;
import basic.studyCafe.service.MemberServiceImpl;
import basic.studyCafe.vo.Member;
import basic.studyCafe.vo.MemberVO;

@Controller
@RequestMapping("/common/*")
public class LoginController {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/LoginMain", method = RequestMethod.GET)
	public String LoginMain() {
		return "common/LoginMain";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String Login(@RequestParam("id") String id
			, @RequestParam("password") String password) {
		String path = " ";
		MemberVO member = new MemberVO();

		member.setUser_id(id);
		member.setUser_password(password);
		
		int result = memberService.checkMember(member);
		
		if(result == 1) {
			path = "main";
		} else {
			path = "seat/list";
		}
		
		return path;
	}
	
	@RequestMapping(value = "/JoinForm", method = RequestMethod.GET)
	public String JoinForm() {
		return "common/JoinForm";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String Join(MemberVO member) {
		memberService.joinMember(member);
		return "main";
		
		/*
		 * @RequestParam("user_id") String user_id,
		 * 
		 * @RequestParam("user_pw") String user_pw, @RequestParam("user_checkpw") String
		 * user_checkpw,
		 * 
		 * @RequestParam("user_name") String user_name,
		 * 
		 * @RequestParam("user_birth") String user_birth, @RequestParam("user_email")
		 * String user_email,
		 * 
		 * @RequestParam("user_phone") String user_phone
		 */
	
/*		@RequestMapping(value = "/insert", method = RequestMethod.POST)
		public String addMember(Member member) {
			memberService.addMember(member);
			
			return "redirect:/main";*/
		}
		
	}
	
	
