package basic.studyCafe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import basic.studyCafe.service.MemberService;
import basic.studyCafe.vo.Member;

@Controller
public class MybatisController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/main")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		List<Member> memberList = memberService.getMembers();
		mav.addObject("memberList", memberList);
		mav.setViewName("main");
		return mav;
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String addMember(Member member) {
		memberService.addMember(member);
		
		return "redirect:/main";
	}
	
	@RequestMapping(value = "/delete")
	public String removeMember(@RequestParam("id") int id) {
		memberService.removeMember(id);
		return "redirect:/main";
	}
	
	@RequestMapping(value = "/updateForm")
	public ModelAndView modifyForm(@RequestParam("id") int id) {
		ModelAndView mav = new ModelAndView();
		Member member = memberService.getModifyMember(id);
		mav.addObject("member", member);
		mav.setViewName("updateForm");
		return mav;
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String modifyMember(Member member) {
		memberService.modifyMember(member);
		return "redirect:/main";
	}
}
