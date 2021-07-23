package basic.studyCafe.mybatis;

import java.util.List;

import basic.studyCafe.vo.BoardVO;

public interface BoardMapper {

	public List<BoardVO> selectBoardList();
	public BoardVO selectBoard(int board_number);
	public void insertArticle(BoardVO board);
	public void deleteBoard(int board_number);
	public void updateBoard(BoardVO board);
	public List<BoardVO> selectTitleSearchList(BoardVO searchBoard);
	public List<BoardVO> selectIdSearchList(BoardVO searchBoard);
	public void updateCount(int board_number);
	
}
