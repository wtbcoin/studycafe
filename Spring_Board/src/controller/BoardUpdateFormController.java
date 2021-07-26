package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.BoardUpdateFormService;
import vo.Board;

@Controller
public class BoardUpdateFormController {

		@Autowired
		private BoardUpdateFormService boardUpdateFormService;
		
		@RequestMapping("/board_updateForm.do")
		public ModelAndView viewUpdateForm(@RequestParam int seq) {
			ModelAndView mav = new ModelAndView();
			Board board = boardUpdateFormService.getOldBoard(seq);
			
			mav.setViewName("boardUpdateForm");
			mav.addObject("board", board);
			return mav;
		}
		
}
