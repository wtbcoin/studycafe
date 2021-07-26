package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BoardDAO;
import vo.Board;

@Service
public class BoardDetailService {
	@Autowired
	private BoardDAO boardDAO;
	
	
	public Board getBoardDetail(int seq) {
		// TODO Auto-generated method stub
		Board board = boardDAO.selectBoard(seq);
		return board;
	}

}
