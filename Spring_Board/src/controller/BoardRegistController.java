package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import service.BoardRegistService;
import vo.Board;

@Controller
public class BoardRegistController {
	@Autowired
	private BoardRegistService boardRegistService;
	
	@RequestMapping("/board_insert_action.do")
	public String registBoard(Board board) {
		boardRegistService.registArticle(board);
		return "redirect:/board_list.do";
	}
}
