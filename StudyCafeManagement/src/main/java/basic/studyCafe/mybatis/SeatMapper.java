package basic.studyCafe.mybatis;

import java.util.List;

import basic.studyCafe.vo.SeatVO;

public interface SeatMapper {

	void updateReserveSeat(SeatVO seat);

	List<SeatVO> selectSeatList();

	void updateReturnSeat(SeatVO seat);
	

}
