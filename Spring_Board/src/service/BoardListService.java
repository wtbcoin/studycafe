package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BoardDAO;
import vo.Board;

@Service
public class BoardListService {
	@Autowired
	private BoardDAO boardDAO;
	
	
	public List<Board> getBoardList() {
		// TODO Auto-generated method stub
		List<Board> boardList = boardDAO.selectBoardList();
		return boardList;
	}

}
