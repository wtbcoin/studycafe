package basic.studyCafe.mybatis;

import java.util.List;

import basic.studyCafe.vo.BoardVO;

public interface BoardMapper {

	public List<BoardVO> selectBoardList();
	public BoardVO selectBoard(int board_number);
	public void insertArticle(BoardVO board);
}
