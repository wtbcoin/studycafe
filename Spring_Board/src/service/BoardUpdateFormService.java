package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BoardDAO;
import vo.Board;

@Service
public class BoardUpdateFormService {
	@Autowired
	private BoardDAO boardDAO;
	
	public Board getOldBoard(int seq) {
		// TODO Auto-generated method stub
		Board board = boardDAO.selectOldBoard(seq);
		
		return board;
	}

}
