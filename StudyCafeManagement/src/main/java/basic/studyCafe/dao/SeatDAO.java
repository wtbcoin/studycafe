package basic.studyCafe.dao;

import java.util.List;

import basic.studyCafe.vo.SeatVO;

public interface SeatDAO {

	public void updateSeat(SeatVO seat);

	public List<SeatVO> selectSeatList();

}
