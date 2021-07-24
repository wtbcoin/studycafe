package basic.studyCafe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import basic.studyCafe.service.NoticeService;
import basic.studyCafe.service.SeatService;
import basic.studyCafe.vo.NoticeVO;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;

	@RequestMapping("/NoticeList")
	public ModelAndView viewNoticeList() {
		ModelAndView mav = new ModelAndView();
		List<NoticeVO> NoticeList = noticeService.getNoticeList();
		mav.setViewName("Notice/NoticeList");
		mav.addObject("NoticeList", NoticeList);
		return mav;
	}

	@RequestMapping("/NoticeDetail")
	public ModelAndView showNoticeDetail(@RequestParam int Notice_number) {
		ModelAndView mav = new ModelAndView();
		NoticeVO Notice = noticeService.getNoticeDetail(Notice_number);
		NoticeService.increaseCount(Notice_number);
		mav.setViewName("Notice/NoticeDetail");
		mav.addObject("Notice", Notice);
		return mav;
	}

	@RequestMapping(value = "/NoticeInsert", method = RequestMethod.GET)
	public String NoticeWriteForm() {
		return "/Notice/NoticeWriteForm";
	}

	@RequestMapping(value = "/NoticeInsert", method = RequestMethod.POST)
	public String registNotice(@RequestParam("user_id") String user_id, NoticeVO Notice) {

		Notice.setUser_id(user_id);
		noticeService.registArticle(Notice);

		return "redirect:/Notice/NoticeList";
	}

	@RequestMapping(value = "/NoticeUpdate", method = RequestMethod.GET)
	public ModelAndView NoticeUpdateForm(@RequestParam int Notice_number) {
		ModelAndView mav = new ModelAndView();
		NoticeVO Notice = noticeService.getNoticeDetail(Notice_number);

		mav.setViewName("Notice/NoticeUpdateForm");
		mav.addObject("Notice", Notice);

		return mav;
	}

	@RequestMapping(value = "/NoticeUpdate", method = RequestMethod.POST)
	public String updateNotice(NoticeVO Notice) {
		NoticeService.modifyNotice(Notice);
		return "redirect:/Notice/NoticeList";
	}

	@RequestMapping("/NoticeDelete")
	public String removeNotice(@RequestParam int Notice_number) {
		NoticeService.removeNotice(Notice_number);
		return "redirect:/Notice/NoticeList";
	}

	@RequestMapping(value = "/NoticeSearch", method = RequestMethod.POST)
	public ModelAndView viewNoticeSearchList(@RequestParam(defaultValue = "Notice_title") String search_option,
			@RequestParam("keyword") String keyword, NoticeVO searchNotice) {
		ModelAndView mav = new ModelAndView();
		List<NoticeVO> NoticeList = noticeService.getNoticeList();

		List<NoticeVO> NoticeSearchList;
		if (search_option.equals("Notice_title")) {
			searchNotice.setNotice_title(keyword);
			NoticeSearchList = noticeService.getTitleSearchList(searchNotice);
		} else {
			searchNotice.setUser_id(keyword);
			NoticeSearchList = noticeService.getIdSearchNoticeList(searchNotice);
		}

		mav.setViewName("Notice/NoticeSearchList");
		mav.addObject("NoticeSearchList", NoticeSearchList);

		return mav;
	}

}
