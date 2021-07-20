package basic.studyCafe.mybatis;

import java.util.ArrayList;

import basic.studyCafe.vo.Member;
import basic.studyCafe.vo.MemberVO;

public interface MemberMapper {

	ArrayList<Member> getMembers();
	void insertMember(Member member);
	void updateMember(Member member);
	void deleteMember(int id);
	Member getUpdateMember(int id);
	
	void insertMemberVO(MemberVO member);
	int getMemberId(MemberVO member);
	MemberVO getMemberVO(MemberVO member);
	MemberVO getFindIdMember(MemberVO member);
	int getMemberPassword(MemberVO member);
	MemberVO getFindPasswordMember(MemberVO member);
	
	
}
