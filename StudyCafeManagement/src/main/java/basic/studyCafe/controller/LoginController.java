package basic.studyCafe.controller;

import org.mybatis.logging.Logger;
import org.mybatis.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import basic.studyCafe.service.MemberServiceImpl;
import basic.studyCafe.vo.MemberVO;

@Controller
@RequestMapping("/common/*")
public class LoginController {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private MemberServiceImpl memberServiceImpl;
	
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
		
		int result = memberServiceImpl.checkMember(member);
		
		if(result == 1) {
			path = "index";
		} else {
			path = "seat/list";
		}
		
		return path;
	}
}
