package basic.studyCafe.dao;

import java.util.ArrayList;

import basic.studyCafe.vo.Member;
import basic.studyCafe.vo.MemberVO;

public interface MemberDAO {
<<<<<<< HEAD
=======
	public ArrayList<Member> getMembers();
	public void insertMember(Member member);
	public void updateMember(Member member);
	public void deleteMember(int id);
	public Member selectUpdateMember(int id);
	
>>>>>>> branch 'master' of https://github.com/wtbcoin/studycafe.git
	public int getLoginMember(MemberVO member);
	public void insertMemberVO(MemberVO member);
	public int getMemberId(MemberVO member);
	public MemberVO getFindIdMember(MemberVO member);
	public int getMemberPassword(MemberVO member);
	public MemberVO getFindPasswordMember(MemberVO member);
	public MemberVO getMemberVO(MemberVO member);
	

}
