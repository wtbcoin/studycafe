package basic.studyCafe.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import basic.studyCafe.vo.Member;

public interface MemberService {
	public ArrayList<Member> getMembers();
	public void addMember(Member member);
	public void removeMember(int id);
	public Member getModifyMember(int id);
	public void modifyMember(Member member);
}
