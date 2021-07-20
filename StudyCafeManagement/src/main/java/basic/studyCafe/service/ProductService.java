package basic.studyCafe.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import basic.studyCafe.vo.ProductVO;


public interface ProductService {
	public ArrayList<ProductVO> getProducts();
}
