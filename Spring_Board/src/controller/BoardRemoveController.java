package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.BoardRemoveService;

@Controller
public class BoardRemoveController {

		@Autowired
		private BoardRemoveService boardRemoveService;
		
		@RequestMapping("/board_delete.do")
		public String removeBoard(@RequestParam int seq) {
			boardRemoveService.removeBoard(seq);
			return "redirect:/board_list.do";
		}
}
