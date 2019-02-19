package form;

import core.ActionForm;

public class FileForm extends ActionForm{
	private String cartName;
	private String cartAuthor;
	private String cartIntro;
	private String cartLatest;
	private String cartImage;
	public String getCartName() {
		return cartName;
	}
	public void setCartName(String cartName) {
		this.cartName = cartName;
	}
	public String getCartAuthor() {
		return cartAuthor;
	}
	public void setCartAuthor(String cartAuthor) {
		this.cartAuthor = cartAuthor;
	}
	public String getCartIntro() {
		return cartIntro;
	}
	public void setCartIntro(String cartIntro) {
		this.cartIntro = cartIntro;
	}
	public String getCartLatest() {
		return cartLatest;
	}
	public void setCartLatest(String cartLatest) {
		this.cartLatest = cartLatest;
	}
	public String getCartImage() {
		return cartImage;
	}
	public void setCartImage(String cartImage) {
		this.cartImage = cartImage;
	}

	
}
