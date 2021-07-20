package basic.studyCafe.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import basic.studyCafe.dao.ProductDAO;
import basic.studyCafe.vo.ProductVO;

@Service
public class ProductServiceimpl implements ProductService{
	@Autowired
	private ProductDAO productDAO;

	@Override
	public ArrayList<ProductVO> getProducts() {
		// TODO Auto-generated method stub
		ArrayList<ProductVO> productList = productDAO.getProducts();
		return productList;
	}
}
