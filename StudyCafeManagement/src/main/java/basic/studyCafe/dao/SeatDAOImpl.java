package basic.studyCafe.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import basic.studyCafe.mybatis.BoardMapper;
import basic.studyCafe.mybatis.SeatMapper;
import basic.studyCafe.vo.BoardVO;
import basic.studyCafe.vo.SeatVO;

@Repository
public class SeatDAOImpl implements SeatDAO{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void updateReserveSeat(SeatVO seat) {
		// TODO Auto-generated method stub
		SeatMapper seatMapper = sqlSession.getMapper(SeatMapper.class);
		seatMapper.updateReserveSeat(seat);

	}
	
	@Override
	public List<SeatVO> selectSeatList() {
		// TODO Auto-generated method stub
		
		SeatMapper seatMapper = sqlSession.getMapper(SeatMapper.class);
		List<SeatVO> seatList = seatMapper.selectSeatList();
		return seatList;
	}
	
	@Override
	public void updateReturnSeat(SeatVO seat) {
		// TODO Auto-generated method stub
		SeatMapper seatMapper = sqlSession.getMapper(SeatMapper.class);
		seatMapper.updateReturnSeat(seat);

	}

}
