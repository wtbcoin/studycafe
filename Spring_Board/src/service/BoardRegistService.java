package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BoardDAO;
import vo.Board;

@Service
public class BoardRegistService {

	@Autowired
	private BoardDAO boardDAO;
	
	public void registArticle(Board board) {
		// TODO Auto-generated method stub
		boardDAO.insertArticle(board);
	}

}
