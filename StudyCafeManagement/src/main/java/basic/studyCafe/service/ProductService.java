package basic.studyCafe.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import basic.studyCafe.vo.CartProductVO;
import basic.studyCafe.vo.ProductVO;


public interface ProductService {
	public List<ProductVO> getproductList();
	public ProductVO getProductDetail(int prod_number);
	public List<CartProductVO> getCartProductList(String user_id);
	public void addCartProduct(String user_id, int prod_number);

}
