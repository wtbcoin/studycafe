package basic.studyCafe.service;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import basic.studyCafe.dao.BoardDAO;
import basic.studyCafe.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDAO boardDAO;
	
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

	@Override
	public void removeBoard(int board_number) {
		// TODO Auto-generated method stub
		boardDAO.deleteBoard(board_number);
	}

	@Override
	public void modifyBoard(BoardVO board) {
		// TODO Auto-generated method stub
		boardDAO.updateBoard(board);
	}

	@Override
	public List<BoardVO> getTitleSearchList(BoardVO searchBoard) {
		// TODO Auto-generated method stub
		List<BoardVO> boardSearchList = boardDAO.selectTitleSearchList(searchBoard);
		return boardSearchList;
	}

	@Override
	public List<BoardVO> getIdSearchBoardList(BoardVO searchBoard) {
		// TODO Auto-generated method stub
		List<BoardVO> boardSearchList = boardDAO.selectIdSearchList(searchBoard);
		return boardSearchList;
	}

	@Override
	public void increaseCount(int board_number) {
		// TODO Auto-generated method stub
		boardDAO.updateCount(board_number);
	}

	

}
