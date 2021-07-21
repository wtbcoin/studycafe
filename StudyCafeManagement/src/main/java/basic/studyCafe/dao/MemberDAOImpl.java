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
	// SqlSessionTemplate이 SqlSession을 구현함

	@Override
	public int getLoginMember(MemberVO member) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("basic.studyCafe.mybatis.MemberMapper.getLoginMember", member);
	}

	@Override
	public MemberVO getMemberVO(MemberVO member) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		MemberVO viewMember = memberMapper.getMemberVO(member);
		return viewMember;
	}
	
	@Override
	public void insertMemberVO(MemberVO member) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		memberMapper.insertMemberVO(member);

	}

	@Override
	public int getMemberId(MemberVO member) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("basic.studyCafe.mybatis.MemberMapper.getMemberId", member);
	}

	@Override
	public MemberVO getFindIdMember(MemberVO member) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		MemberVO findMember = memberMapper.getFindIdMember(member);
		return findMember;
	}

	@Override
	public int getMemberPassword(MemberVO member) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("basic.studyCafe.mybatis.MemberMapper.getMemberPassword", member);
	}

	@Override
	public MemberVO getFindPasswordMember(MemberVO member) {
		// TODO Auto-generated method stub
		MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
		MemberVO findMember = memberMapper.getFindPasswordMember(member);
		return findMember;
	}

}
