package basic.studyCafe.dao;


import java.util.ArrayList;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import basic.studyCafe.mybatis.BoardMapper;
import basic.studyCafe.mybatis.MemberMapper;
import basic.studyCafe.vo.BoardVO;
import basic.studyCafe.vo.Member;



@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BoardVO> selectBoardList() {
		// TODO Auto-generated method stub
		
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		List<BoardVO> boardList = boardMapper.selectBoardList();
		return boardList;
	}

	@Override
	public BoardVO selectBoard(int board_number) {
		// TODO Auto-generated method stub
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		BoardVO board = boardMapper.selectBoard(board_number);
		return board;
	}
	
	@Override
	public void insertArticle(BoardVO board) {
		// TODO Auto-generated method stub
		BoardMapper boardMapper = sqlSession.getMapper(BoardMapper.class);
		boardMapper.insertArticle(board);
	}

	
}

