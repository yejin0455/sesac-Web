package kr.co.mlec.board;

/*
 * 자바빈즈 클래스
 * 1. 패키지 존재
 * 2. 클래스의 접근 제한자 public
 * 3. 멤버변수의 접근 제한자 private
 * 4. getter/setter 구현
 * 5. 기본생성자
 * 
 * 	기본 생성자	alt+shift+s 누른 후  c 선택
 * 	매개변수 생성자					  o 선택
 * 	getter/setter				  r 선택
 * 	toString()					  s 선택
 * 	Override					  v 선택
 */

public class BoardVO {
	private int no;
	private String title;
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public BoardVO() {
		super();
		// TODO Auto-generated constructor stub
	}

}
