package basic.studyCafe.mybatis;

import java.util.List;

import basic.studyCafe.vo.SeatVO;

public interface SeatMapper {

	void updateBoard(SeatVO seat);

	List<SeatVO> selectSeatList();

}
