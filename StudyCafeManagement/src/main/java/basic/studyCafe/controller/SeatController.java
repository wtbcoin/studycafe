package basic.studyCafe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import basic.studyCafe.service.SeatService;
import basic.studyCafe.vo.BoardVO;
import basic.studyCafe.vo.SeatVO;

@Controller
@RequestMapping("/seat/*")
public class SeatController {

	@Autowired
	private SeatService seatService;

	@RequestMapping(value = "/register")
	public String registPOST() throws Exception {

		return "seat/register";
	}

	@RequestMapping(value = "/reserve", method = RequestMethod.POST)
	public ModelAndView Reserve(@RequestParam("seatNum") int seatNum, @RequestParam("user_id") String user_id,
			SeatVO seat) {
		seat.setSeat_number(seatNum);
		seat.setUser_id(user_id);
		seatService.registArticle(seat);
		
		ModelAndView mav = new ModelAndView();

		List<SeatVO> seatList = seatService.getSeatList();
		mav.setViewName("seat/register");

		mav.addObject("seatList", seatList);

		return mav;
	}

}
