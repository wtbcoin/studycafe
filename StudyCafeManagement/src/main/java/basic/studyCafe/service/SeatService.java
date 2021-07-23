package basic.studyCafe.service;

import java.util.List;

import basic.studyCafe.vo.SeatVO;

public interface SeatService {

	public void registSeat(SeatVO seat);

	public List<SeatVO> getSeatList();

	public void returnSeat(SeatVO seat);

}
