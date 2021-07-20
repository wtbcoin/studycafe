package basic.studyCafe.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mybatis.logging.Logger;
import org.mybatis.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import basic.studyCafe.service.ProductService;


@Controller
@RequestMapping("/product/*")
public class ProductController extends HttpServlet {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/ProductList", method = RequestMethod.GET)
	public String ProductList() {
		return "product/ProductList";
	}
	
	@RequestMapping(value = "/CartProductList", method = RequestMethod.GET)
	public String CartProductList() {
		return "product/CartProductList";
	} 
	@RequestMapping(value = "/ProductDetail", method = RequestMethod.GET)
	public String ProductDetail() {
		return "product/ProductDetail";
	}
	@RequestMapping(value = "/ProductRegist", method = RequestMethod.GET)
	public String ProductRegist() {
		return "product/ProductRegist";
	}
	@RequestMapping(value = "/ProductUpdate", method = RequestMethod.GET)
	public String ProductUpdate() {
		return "product/ProductUpdate";
	}
}
