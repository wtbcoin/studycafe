package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.BoardDetailService;
import vo.Board;

@Controller
public class BoardDetailController {

		@Autowired
		private BoardDetailService boardDetailService;
		
		@RequestMapping("/board_detail.do")
		public ModelAndView showBoardDetail(@RequestParam int seq) {
			ModelAndView mav = new ModelAndView();
			Board board = boardDetailService.getBoardDetail(seq);
			mav.addObject("board", board);
			mav.setViewName("boardDetail");
			return mav;
		}
}
