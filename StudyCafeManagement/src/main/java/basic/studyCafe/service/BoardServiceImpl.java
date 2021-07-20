package basic.studyCafe.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import basic.studyCafe.dao.BoardDAOImpl;
import basic.studyCafe.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDAOImpl boardDAO;
	
	@Override
	public List<BoardVO> getBoardList() {
		// TODO Auto-generated method stub
		List<BoardVO> boardList = boardDAO.selectBoardList();
		return boardList;
	}
	
	@Override
	public BoardVO getBoardDetail(int board_number) {
		// TODO Auto-generated method stub
		BoardVO board = boardDAO.selectBoard(board_number);
		return board;
	}
	
	@Override
	public void registArticle(BoardVO board) {
		// TODO Auto-generated method stub

		boardDAO.insertArticle(board);
	}
	

}
