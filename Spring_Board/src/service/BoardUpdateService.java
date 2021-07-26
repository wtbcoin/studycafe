package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BoardDAO;
import vo.Board;
//ModifyController, ModifyService...
//WriteController, WriteService...
@Service
public class BoardUpdateService {
	
	@Autowired
	private BoardDAO boardDAO;
	
	public void modifyBoard(Board board) {
		// TODO Auto-generated method stub
		boardDAO.updateBoard(board);
	}

}
