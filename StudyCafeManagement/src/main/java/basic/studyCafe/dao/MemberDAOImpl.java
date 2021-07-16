package basic.studyCafe.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import basic.studyCafe.mybatis.MemberMapper;
import basic.studyCafe.vo.Member;
import basic.studyCafe.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession sqlSession;
	//SqlSessionTemplate이 SqlSession을 구현함
	
	@Override
	public ArrayList<Member> getMembers() {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		ArrayList<Member> memberList = memberMapper.getMembers();
		return memberList;
	}

	@Override
	public void insertMember(Member member) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		memberMapper.insertMember(member);
	}

	@Override
	public void updateMember(Member member) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		memberMapper.updateMember(member);
	}

	@Override
	public void deleteMember(int id) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		memberMapper.deleteMember(id);
	}

	@Override
	public Member selectUpdateMember(int id) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		Member member = memberMapper.getUpdateMember(id);
		return member;
	}
	
	@Override
	public int getLoginMember(MemberVO member) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("basic.studyCafe.mybatis.MemberMapper.getLoginMember", member);
	}
	
	@Override
	public void insertMemberVO(MemberVO member) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper =
		sqlSession.getMapper(MemberMapper.class);
		memberMapper.insertMemberVO(member);
		
	}
	
	/*
	 * @Override public void insertMember(Member member) { // TODO Auto-generated
	 * method stub MemberMapper memberMapper =
	 * sqlSession.getMapper(MemberMapper.class); memberMapper.insertMember(member);
	 * }
	 */

}
