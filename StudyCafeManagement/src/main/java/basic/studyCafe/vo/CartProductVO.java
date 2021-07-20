package basic.studyCafe.vo;

public class CartProductVO {
	private String user_id;
	private int prod_number;
	private String Prod_type;	//상품 분류
	private int Prod_amount;
	private String Prod_name;
	private int Prod_price;
	private String Prod_image;
	
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getProd_number() {
		return prod_number;
	}
	public void setProd_number(int prod_number) {
		this.prod_number = prod_number;
	}
	public String getProd_type() {
		return Prod_type;
	}
	public void setProd_type(String prod_type) {
		Prod_type = prod_type;
	}
	public int getProd_amount() {
		return Prod_amount;
	}
	public void setProd_amount(int prod_amount) {
		Prod_amount = prod_amount;
	}
	public String getProd_name() {
		return Prod_name;
	}
	public void setProd_name(String prod_name) {
		Prod_name = prod_name;
	}
	public int getProd_price() {
		return Prod_price;
	}
	public void setProd_price(int prod_price) {
		Prod_price = prod_price;
	}
	public String getProd_image() {
		return Prod_image;
	}
	public void setProd_image(String prod_image) {
		Prod_image = prod_image;
	}
}
