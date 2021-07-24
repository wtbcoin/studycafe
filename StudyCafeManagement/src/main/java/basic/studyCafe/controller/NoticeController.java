package basic.studyCafe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import basic.studyCafe.service.NoticeService;
import basic.studyCafe.vo.NoticeVO;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;

	@RequestMapping("/NoticeList")
	public ModelAndView viewNoticeList(@RequestParam String user_id) {
		ModelAndView mav = new ModelAndView();
		List<NoticeVO> noticeList = noticeService.getNoticeList();
		mav.addObject("noticeList", noticeList);

		if (user_id.equals("admin")) {
			mav.setViewName("notice/NoticeList");
		} else {
			mav.setViewName("notice/UserNoticeList");
		}

		return mav;
	}

	@RequestMapping("/NoticeDetail")
	public ModelAndView showNoticeDetail(@RequestParam int notice_number, @RequestParam String user_id) {
		ModelAndView mav = new ModelAndView();
		NoticeVO notice = noticeService.getNoticeDetail(notice_number);
		noticeService.increaseCount(notice_number);
		mav.addObject("notice", notice);

		if (user_id.equals("admin")) {
			mav.setViewName("notice/NoticeDetail");
		} else {
			mav.setViewName("notice/UserNoticeDetail");
		}

		return mav;
	}

	@RequestMapping(value = "/NoticeInsert", method = RequestMethod.GET)
	public String NoticeWriteForm() {
		return "/notice/NoticeWriteForm";
	}

	@RequestMapping(value = "/NoticeInsert", method = RequestMethod.POST)
	public String registNotice(@RequestParam("user_id") String user_id, NoticeVO notice) {

		notice.setUser_id(user_id);
		noticeService.registArticle(notice);

		return "redirect:/notice/NoticeList?user_id=" + user_id;
	}

	@RequestMapping(value = "/NoticeUpdate", method = RequestMethod.GET)
	public ModelAndView NoticeUpdateForm(@RequestParam int notice_number) {
		ModelAndView mav = new ModelAndView();
		NoticeVO notice = noticeService.getNoticeDetail(notice_number);

		mav.setViewName("notice/NoticeUpdateForm");
		mav.addObject("notice", notice);

		return mav;
	}

	@RequestMapping(value = "/NoticeUpdate", method = RequestMethod.POST)
	public String updateNotice(NoticeVO notice, @RequestParam String user_id) {
		noticeService.modifyNotice(notice);
		return "redirect:/notice/NoticeList?user_id=" + user_id;
	}

	@RequestMapping("/NoticeDelete")
	public String removeNotice(@RequestParam int notice_number, @RequestParam String user_id) {
		noticeService.removeNotice(notice_number);
		return "redirect:/notice/NoticeList?user_id=" +user_id;
	}

	@RequestMapping(value = "/NoticeSearch", method = RequestMethod.POST)
	public ModelAndView viewNoticeSearchList(@RequestParam(defaultValue = "notice_title") String search_option,
			@RequestParam("keyword") String keyword, NoticeVO searchNotice, @RequestParam String user_id) {
		ModelAndView mav = new ModelAndView();
		List<NoticeVO> noticeSearchList;
		if (search_option.equals("notice_title")) {
			searchNotice.setNotice_title(keyword);
			noticeSearchList = noticeService.getTitleSearchList(searchNotice);
		} else {
			searchNotice.setUser_id(keyword);
			noticeSearchList = noticeService.getIdSearchNoticeList(searchNotice);
		}

		mav.addObject("noticeSearchList", noticeSearchList);

		if (user_id.equals("admin")) {
			mav.setViewName("notice/NoticeSearchList");
		} else {
			mav.setViewName("notice/UserNoticeSearchList");
		}

		return mav;
	}

}
