package basic.studyCafe.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import basic.studyCafe.mybatis.ProductMapper;
import basic.studyCafe.vo.ProductVO;

@Repository
public class ProductDAOimpl implements ProductDAO {

	@Autowired
	private SqlSession sqlSession;
	// SqlSessionTemplate이 SqlSession을 구현함

	@Override
	public ArrayList<ProductVO> getProducts() {
		// TODO Auto-generated method stub
		ProductMapper productMapper = sqlSession.getMapper(ProductMapper.class);
		ArrayList<ProductVO> productList = productMapper.getProducts();
		return productList;
	}
}