package basic.studyCafe.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import basic.studyCafe.vo.Member;
import basic.studyCafe.vo.MemberVO;

public interface MemberService {
<<<<<<< HEAD
	public int checkMember(MemberVO member, HttpSession session);
	public MemberVO viewMember(MemberVO member);
=======
	public ArrayList<Member> getMembers();
	public void addMember(Member member);
	public void removeMember(int id);
	public Member getModifyMember(int id);
	public void modifyMember(Member member);
	
	public int checkMember(MemberVO member);
>>>>>>> branch 'master' of https://github.com/wtbcoin/studycafe.git
	public void joinMember(MemberVO member);
	public int checkMemberId(MemberVO member);
	public MemberVO getFindIdMember(MemberVO member);
	public int checkMemberPassword(MemberVO member);
	public MemberVO getFindPasswordMember(MemberVO member);
	public void logoutMember(HttpSession session);

}
