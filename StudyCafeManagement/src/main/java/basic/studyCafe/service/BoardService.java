package basic.studyCafe.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import basic.studyCafe.vo.BoardVO;

public interface BoardService {
	public List<BoardVO> getBoardList();
	public BoardVO getBoardDetail(int board_number);
	public void registArticle(BoardVO board);
}
