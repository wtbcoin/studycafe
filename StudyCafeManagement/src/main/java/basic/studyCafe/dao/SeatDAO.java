package basic.studyCafe.dao;

import java.util.List;

import basic.studyCafe.vo.SeatVO;

public interface SeatDAO {

	public void updateReserveSeat(SeatVO seat);

	public List<SeatVO> selectSeatList();

	public void updateReturnSeat(SeatVO seat);

}
