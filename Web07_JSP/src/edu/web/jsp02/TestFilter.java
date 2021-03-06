package edu.web.jsp02;

import java.io.IOException;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class TestFilter implements Filter {
	// * Filter의 목적
	// - 서버에서 리소스에 접근하기 전에 클라이언트의 요청을 인터셉트 하는 기능
	// - 클라이언트로 보내기 전에 서버의 응답을 조작

	// * Filter의 유형
	// - 인증
	// - 데이터 압축
	// - 암호화
	// - 로그/감시
	// - 이미지 변환
	// - charEncodingSet

	// * Filter 사용법
	// - web.xml 파일에 필터 태그를 추가

	public TestFilter() {}
	
	// init() : 필터가 시작할 때 호출
	public void init(FilterConfig fConfig) throws ServletException {
		String testParam = fConfig.getInitParameter("test-param"); // web.xml init-param과 일치
		
		System.out.println("Test parameter : " + testParam);
	}

	// doFilter() : 필터를 사용할 때마다 기능이 수행됨
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// 클라이언트로부터 IP 얻기
		String ipAddress = request.getRemoteAddr();
		
		// 현재 시간과 IP 주소 출력
		System.out.println("IP : " + ipAddress + ", Time : " + new Date().toString());
		chain.doFilter(request, response);
	}

	public void destroy() {

	}

}