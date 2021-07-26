package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.BoardListService;
import vo.Board;

@Controller
public class BoardListController {
	
	@Autowired
	private BoardListService boardListService;
	
	@RequestMapping("/board_list.do")
	public ModelAndView viewBoardList() {
		ModelAndView mav = new ModelAndView();
		List<Board> boardList = boardListService.getBoardList();
		mav.setViewName("boardList");
		mav.addObject("boardList", boardList);
		return mav;
	}
	
}
