package basic.studyCafe.service;

import java.util.List;

import basic.studyCafe.vo.BoardVO;

public interface BoardService {
	public List<BoardVO> getBoardList();
	public BoardVO getBoardDetail(int board_number);
	public void registArticle(BoardVO board);
	public void removeBoard(int board_number);
	public void modifyBoard(BoardVO board);
	public List<BoardVO> getTitleSearchList(BoardVO searchBoard);
	public List<BoardVO> getIdSearchBoardList(BoardVO searchBoard);
	public void increaseCount(int board_number);
}
