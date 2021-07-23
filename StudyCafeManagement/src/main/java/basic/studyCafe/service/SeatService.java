package basic.studyCafe.service;

import java.util.List;

import basic.studyCafe.vo.SeatVO;

public interface SeatService {

	public void registArticle(SeatVO seat);

	public List<SeatVO> getSeatList();

}
