package pojo;

public class Caricature {
	private String cartId;
	private String cartName;//������
	private String cartAuthor;//��������
	private String cartIntro;//�������
	private String cartImage;//��������
	private String cartKind;//�������� 
	private String cartLatest;//�����½�
	private String time;//���¸���ʱ��
	private int cartNum;//������
	private double grade;//����
	private int peopleSum;//��������
	private double gradeSum;//��������
	
	public Caricature() {
		super();
	}

	public Caricature(String cartName, String cartAuthor, String cartIntro, String cartImage, String cartKind,
			String cartLatest, String time) {
		super();
		this.cartName = cartName;
		this.cartAuthor = cartAuthor;
		this.cartIntro = cartIntro;
		this.cartImage = cartImage;
		this.cartKind = cartKind;
		this.cartLatest = cartLatest;
		this.time = time;
	}

	public Caricature(String cartId, String cartName, String cartAuthor, String cartIntro, String cartImage,
			String cartKind, String cartLatest, String time, int cartNum, double grade, int peopleSum,
			double gradeSum) {
		super();
		this.cartId = cartId;
		this.cartName = cartName;
		this.cartAuthor = cartAuthor;
		this.cartIntro = cartIntro;
		this.cartImage = cartImage;
		this.cartKind = cartKind;
		this.cartLatest = cartLatest;
		this.time = time;
		this.cartNum = cartNum;
		this.grade = grade;
		this.peopleSum = peopleSum;
		this.gradeSum = gradeSum;
	}

	@Override
	public String toString() {
		return "Caricature [cartId=" + cartId + ", cartName=" + cartName + ", cartAuthor=" + cartAuthor + ", cartIntro="
				+ cartIntro + ", cartImage=" + cartImage + ", cartKind=" + cartKind + ", cartLatest=" + cartLatest
				+ ", time=" + time + ", cartNum=" + cartNum + ", grade=" + grade + ", peopleSum=" + peopleSum
				+ ", gradeSum=" + gradeSum + "]";
	}

	public String getCartId() {
		return cartId;
	}

	public void setCartId(String cartId) {
		this.cartId = cartId;
	}

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

	public String getCartImage() {
		return cartImage;
	}

	public void setCartImage(String cartImage) {
		this.cartImage = cartImage;
	}

	public String getCartKind() {
		return cartKind;
	}

	public void setCartKind(String cartKind) {
		this.cartKind = cartKind;
	}

	public String getCartLatest() {
		return cartLatest;
	}

	public void setCartLatest(String cartLatest) {
		this.cartLatest = cartLatest;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getCartNum() {
		return cartNum;
	}

	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}

	public double getGrade() {
		return grade;
	}

	public void setGrade(double grade) {
		this.grade = grade;
	}

	public int getPeopleSum() {
		return peopleSum;
	}

	public void setPeopleSum(int peopleSum) {
		this.peopleSum = peopleSum;
	}

	public double getGradeSum() {
		return gradeSum;
	}

	public void setGradeSum(double gradeSum) {
		this.gradeSum = gradeSum;
	}

}
