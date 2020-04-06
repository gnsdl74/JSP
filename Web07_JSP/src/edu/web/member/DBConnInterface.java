package edu.web.member;

public interface DBConnInterface {
	// DB 접속에 필요한 상수 정의
	public static final String URL = "jdbc:oracle:thin:@localhost:1521:orcl";
	public static final String USER = "scott";
	public static final String PASSWORD = "tiger";
	
	// DB 테이블 컬럼 상수 정의
	public static final String TABLE_NAME = "MEMBER";
	public static final String COL_USERID = "USERID";
	public static final String COL_PASSWORD = "PASSWORD";
	public static final String COL_EMAIL = "EMAIL";
	public static final String COL_PHONE = "PHONE";
	public static final String COL_EMAILAGREE = "EMAILAGREE";
	public static final String COL_INTEREST = "INTEREST";
	public static final String COL_INTRODUCE = "INTRODUCE";
	
	// 오라클 쿼리 작성
	// insert into member values (?, ?, ?, ?, ?, ?, ?)
	public static final String SQL_INSERT = "insert into " + TABLE_NAME + " values (?, ?, ?, ?, ?, ?, ?)";
}
