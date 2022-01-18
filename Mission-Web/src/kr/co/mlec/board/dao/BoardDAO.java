package kr.co.mlec.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.co.mlec.board.vo.BoardVO;
import kr.co.mlec.board.vo.PagingVO;
import kr.co.mlec.util.ConnectionFactory;
import kr.co.mlec.util.JDBCClose;

/**
 * 
 * 게시판 DB(tbl_board) CRUD
 *
 */

public class BoardDAO {
	
	/**
	 * 페이징
	 */
	public int totalCount() {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		int totalList = 0;
		
		try {
			conn = new ConnectionFactory().getConnection();
	         StringBuilder sql = new StringBuilder();
	         sql.append("select count(*) from ");
	         sql.append("(select * from tbl_board order by no desc) ");
	         sql.append("tbl_board ");
	         pstmt = conn.prepareStatement(sql.toString());
	         
	         ResultSet rs = pstmt.executeQuery();
	         rs.next();
	         
	         totalList = rs.getInt(1);
	         
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(pstmt, conn);
		}
		return totalList;
	}
	
	
	/**
	 * 전체게시글 조회
	 */
	public List<BoardVO> pagingList(int curPage) {

		PagingVO paging = new PagingVO();
		List<BoardVO> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		int startNum = ((curPage-1) * paging.getDisplayRow()) + 1;
		int endNum = curPage * paging.getDisplayRow();

		try {
			conn = new ConnectionFactory().getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("select * from ");
			sql.append("(select ROWNUM as row_num, no, title, writer, view_cnt, to_char(reg_date, 'yyyy-mm-dd') as reg_date ");
			sql.append("from (select * from tbl_board order by no desc) ");
			sql.append("tbl_board) ");
			sql.append("where row_num >= ? and row_num <= ? ");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, startNum);
			pstmt.setInt(2, endNum);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				int no = rs.getInt("no");
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				int viewCnt = rs.getInt("view_cnt");
				String regDate = rs.getString("reg_date");
				BoardVO board = new BoardVO(no, title, writer, viewCnt, regDate);

				list.add(board);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(pstmt, conn);
		}

		return list;
	}


	/**
	 * 새 글 등록
	 */
	public void insertBoard(BoardVO board) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = new ConnectionFactory().getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("insert into tbl_board(no, title, writer, content) ");
			sql.append("values(seq_tbl_board_no.nextval, ?, ?, ?) ");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getWriter());
			pstmt.setString(3, board.getContent());
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(pstmt, conn);
		}
	}

	/**
	 * 게시판 번호에 해당 게시글 조회
	 */
	public BoardVO selectBoardByNo(int boardNo) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		BoardVO board = null; // 리턴타입의 데이터는 항상 try{} 위에 있어야 됨

		try {
			conn = new ConnectionFactory().getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("select no, title, writer, content, view_cnt, ");
			sql.append("to_char(reg_date, 'yyyy-mm-dd') as reg_date ");
			sql.append("from tbl_board ");
			sql.append("where no = ? ");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, boardNo);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				int no = rs.getInt("no");
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String content = rs.getString("content");
				int viewCnt = rs.getInt("view_cnt");
				String regDate = rs.getString("reg_date");

				board = new BoardVO(no, title, writer, content, viewCnt, regDate);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(pstmt, conn);
		}

		return board;
	}

	/**
	 * 게시물 수정(제목, 작성자, 내용)
	 */
	public void updateBoard(BoardVO board) {

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = new ConnectionFactory().getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("update tbl_board ");
			sql.append("set title = ?, writer = ?, content = ? ");
			sql.append("where no = ? ");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getWriter());
			pstmt.setString(3, board.getContent());
			pstmt.setInt(4, board.getNo());
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(pstmt, conn);
		}
	}

	/**
	 * 조회수 증가
	 */
	public void hits(int no) {

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = new ConnectionFactory().getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("update tbl_board ");
			sql.append("set view_cnt = view_cnt+1");
			sql.append("where no = ? ");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, no);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCClose.close(pstmt, conn);
		}

	}

}
