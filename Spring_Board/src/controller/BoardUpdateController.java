package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import service.BoardUpdateService;
import vo.Board;

@Controller
public class BoardUpdateController {

		@Autowired
		private BoardUpdateService boardUpdateService;
		
		@RequestMapping("/board_update_action.do")
		public String updateBoard(Board board) {
			boardUpdateService.modifyBoard(board);
			return "redirect:/board_list.do";
		}
}
