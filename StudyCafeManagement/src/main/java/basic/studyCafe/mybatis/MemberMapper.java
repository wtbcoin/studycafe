package basic.studyCafe.mybatis;

import java.util.ArrayList;
import basic.studyCafe.vo.MemberVO;

public interface MemberMapper {

	
	void insertMemberVO(MemberVO member);
	int getMemberId(MemberVO member);
	MemberVO getMemberVO(MemberVO member);
	MemberVO getFindIdMember(MemberVO member);
	int getMemberPassword(MemberVO member);
	MemberVO getFindPasswordMember(MemberVO member);
	MemberVO getUniqueId(MemberVO member);
	
}
