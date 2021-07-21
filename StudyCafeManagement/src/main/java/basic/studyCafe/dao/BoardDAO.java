package basic.studyCafe.dao;

import java.util.List;

import basic.studyCafe.vo.BoardVO;

public interface BoardDAO{
	public List<BoardVO> selectBoardList();
	public BoardVO selectBoard(int board_number);
	public void insertArticle(BoardVO board);
	public void deleteBoard(int board_number);
	public void updateBoard(BoardVO board);
	public List<BoardVO> selectTitleSearchList(BoardVO searchBoard);
	public List<BoardVO> selectIdSearchList(BoardVO searchBoard);
}
