package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BoardDAO;

@Service
public class BoardRemoveService {
	@Autowired
	private BoardDAO boardDAO;
	
	public void removeBoard(int seq) {
		// TODO Auto-generated method stub
		boardDAO.deleteBoard(seq);
	}

}
