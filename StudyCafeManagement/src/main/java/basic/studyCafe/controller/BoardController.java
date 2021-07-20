package basic.studyCafe.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import basic.studyCafe.service.BoardServiceImpl;
import basic.studyCafe.vo.BoardVO;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Autowired
	private BoardServiceImpl boardService;

	@RequestMapping("/BoardList")
	public ModelAndView viewBoardList() {
		ModelAndView mav = new ModelAndView();
		List<BoardVO> boardList = boardService.getBoardList();
		mav.setViewName("board/BoardList");
		mav.addObject("boardList", boardList);
		return mav;
	}

	@RequestMapping("/BoardDetail")
	public ModelAndView showBoardDetail(@RequestParam int board_number) {
		ModelAndView mav = new ModelAndView();
		BoardVO board = boardService.getBoardDetail(board_number);
		mav.setViewName("board/BoardDetail");
		mav.addObject("board", board);
		return mav;
	}
	

	@RequestMapping(value = "/BoardInsert", method = RequestMethod.GET)
	public String boardWriteForm() {
		return "/board/BoardWriteForm";
	}
	
	@RequestMapping(value = "/BoardInsert", method = RequestMethod.POST)
	public String registBoard(@RequestParam("user_id") String user_id, BoardVO board) {
		/*
		 * board.setUser_id(user_id); boardService.registArticle(board);
		 */		
		System.out.println(user_id);
		return "common/main";
	}
	


}
