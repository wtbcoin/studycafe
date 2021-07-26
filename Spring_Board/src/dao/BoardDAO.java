package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import vo.Board;

@Repository
public class BoardDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	public List<Board> selectBoardList() {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM board ORDER BY seq DESC";
		
		RowMapper<Board>  mapper = new RowMapper<Board>() {
			@Override
			public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				Board board = new Board();
				board.setContent(rs.getString("content"));
				board.setHitcount(rs.getInt("hitcount"));
				board.setRegdate(rs.getString("regdate"));
				board.setSeq(rs.getInt("seq"));
				board.setTitle(rs.getString("title"));
				board.setWriter(rs.getString("writer"));
				return board;
			}
		};
		
		List<Board> boardList = jdbcTemplate.query(sql, mapper);
		
		return boardList;
	}


	public void insertArticle(Board board) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO board(seq, title, content, writer, regdate, hitcount)"
				+ " VALUES(board_seq.nextval, ?,?,?, sysdate, 0)";
		
		Object[] values = new Object[] {
				board.getTitle(),
				board.getContent(),
				board.getWriter()
		};
		
		jdbcTemplate.update(sql, values);
	}


	public Board selectBoard(int seq) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM board WHERE seq = ?";
		Object[] values = new Object[] {seq};
		
		RowMapper<Board>  mapper = new RowMapper<Board>() {
			@Override
			public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				Board board = new Board();
				board.setContent(rs.getString("content"));
				board.setHitcount(rs.getInt("hitcount"));
				board.setRegdate(rs.getString("regdate"));
				board.setSeq(rs.getInt("seq"));
				board.setTitle(rs.getString("title"));
				board.setWriter(rs.getString("writer"));
				return board;
			}
		};
		
		Board board = jdbcTemplate.queryForObject(sql, values, mapper);
		
		return board;
	}


	public Board selectOldBoard(int seq) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM board WHERE seq = ?";
		Object[] values = new Object[] {seq};
		
		RowMapper<Board>  mapper = new RowMapper<Board>() {
			@Override
			public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				Board board = new Board();
				board.setContent(rs.getString("content"));
				board.setHitcount(rs.getInt("hitcount"));
				board.setRegdate(rs.getString("regdate"));
				board.setSeq(rs.getInt("seq"));
				board.setTitle(rs.getString("title"));
				board.setWriter(rs.getString("writer"));
				return board;
			}
		};
		
		Board board = jdbcTemplate.queryForObject(sql, values, mapper);
		
		return board;
	}


	public void updateBoard(Board board) {
		// TODO Auto-generated method stub
		String sql = "UPDATE board SET writer = ?, title = ?, content = ? WHERE seq = ?";
		Object[] values = new Object[] {
			board.getWriter(), board.getTitle(), board.getContent(), board.getSeq()	
		};
		
		jdbcTemplate.update(sql, values);
	}


	public void deleteBoard(int seq) {
		// TODO Auto-generated method stub
		String sql = "DELETE board WHERE seq = ?";
		Object[] values = new Object[] {
				seq
		};
		
		jdbcTemplate.update(sql, values);
	}

}
