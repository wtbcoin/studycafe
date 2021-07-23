package basic.studyCafe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import basic.studyCafe.dao.SeatDAO;
import basic.studyCafe.vo.SeatVO;

@Service
public class SeatServiceImpl implements SeatService{
	
	@Autowired
	private SeatDAO seatDAO;
	
	@Override
	public void registSeat(SeatVO seat) {
		// TODO Auto-generated method stub
		seatDAO.updateReserveSeat(seat);
	}
	
	@Override
	public List<SeatVO> getSeatList() {
		// TODO Auto-generated method stub
		List<SeatVO> seatList = seatDAO.selectSeatList();
		return seatList;
	}
	
	@Override
	public void returnSeat(SeatVO seat) {
		// TODO Auto-generated method stub
		seatDAO.updateReturnSeat(seat);	
	}

}
