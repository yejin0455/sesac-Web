package kr.co.mlec.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.co.mlec.member.vo.MemberVO;
import kr.co.mlec.util.ConnectionFactory;
import kr.co.mlec.util.JDBCClose;

public class MemberDAO {

	private Connection conn = null;
	private PreparedStatement pstmt = null;

	/**
	 * 전체 회원 조회
	 */
	public List<MemberVO> selectAllMember() {

		List<MemberVO> list = new ArrayList<>();

		try {
			conn = new ConnectionFactory().getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("select ID, NAME, (EMAIL_ID||'@'||EMAIL_DOMAIN) as EMAIL, ");
			sql.append("(TEL1||'-'||TEL2||'-'||TEL3) as TEL, POST, (BASIC_ADDR||' '||DETAIL_ADDR) ADDR, TYPE, ");
			sql.append("to_char(REG_DATE, 'yyyy-mm-dd') as REG_DATE ");
			sql.append("from t_member ");
			sql.append("order by REG_DATE desc ");
			pstmt = conn.prepareStatement(sql.toString());
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				String id = rs.getString("ID");
				String name = rs.getString("NAME");
				String email = rs.getString("EMAIL");
				String tel = rs.getString("TEL");
				String post = rs.getString("POST");
				String addr = rs.getString("ADDR");
				String type = rs.getString("TYPE");
				String regDate = rs.getString("REG_DATE");
				MemberVO member = new MemberVO(id, name, email, tel, post, addr, type, regDate);

				list.add(member);
			}

			JDBCClose.close(pstmt, conn);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(pstmt, conn);
		}
		return list;
	}

	/**
	 * 회원 등록
	 */
	public void insertMember(MemberVO member) {

		try {

			Connection conn = new ConnectionFactory().getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("insert into t_member(ID, NAME, PASSWORD, EMAIL_ID, ");
			sql.append("EMAIL_DOMAIN, TEL1, TEL2, TEL3, POST, ");
			sql.append("BASIC_ADDR, DETAIL_ADDR) ");
			sql.append("values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ");
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getPassword());
			pstmt.setString(4, member.getEmailId());
			pstmt.setString(5, member.getEmailDo());
			pstmt.setString(6, member.getTelA());
			pstmt.setString(7, member.getTelB());
			pstmt.setString(8, member.getTelC());
			pstmt.setString(9, member.getPost());
			pstmt.setString(10, member.getbAddr());
			pstmt.setString(11, member.getdAddr());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(pstmt, conn);
		}
	}

	
}
