package kr.co.mlec.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * 컨트롤러 함수는 무조건 
 * 1.request, response 객체를 전달받고 
 * 2.jsp주소를 리턴해야만 한다 
 * => 강제성, 통일성을 부여해두자 => 인터페이스 사용!
 */

public interface Controller {

	String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
