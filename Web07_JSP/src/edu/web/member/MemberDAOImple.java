package edu.web.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import oracle.jdbc.OracleDriver;

public class MemberDAOImple implements MemberDAO, DBConnInterface {
	private static MemberDAOImple instace = null;

	private MemberDAOImple() {
		try {
			DriverManager.registerDriver(new OracleDriver());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static MemberDAOImple getInstance() {
		if (instace == null) {
			instace = new MemberDAOImple();
		}
		return instace;
	}

	@Override
	public int insert(MemberVO vo) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			System.out.println("오라클 연결 성공");
			
			pstmt = conn.prepareStatement(SQL_INSERT);
			pstmt.setString(1, vo.getUserId());
			pstmt.setString(2, vo.getPassword());
			pstmt.setString(3, vo.getEmail());
			pstmt.setString(4, vo.getPhone());
			pstmt.setString(5, vo.getEmailAgree());
			// interest 배열 값을 DB에 전송
			pstmt.setString(6, String.join(",", vo.getInterest()));
			pstmt.setString(7, vo.getIntroduce());
			
			// 데이터 전송
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;

	} // end insert()

} // end MemberDAOImple
