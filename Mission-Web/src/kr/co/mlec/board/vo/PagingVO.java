package kr.co.mlec.board.vo;

public class PagingVO {

	private int totCnt;  //전체 게시글 수
	private int curPage;// 현재 페이지
	private int totPage;  //전체 페이지 수
	
	private int displayPage = 5;  //한 페이지에 몇 개의 페이지 set
	private int displayRow = 10;  //한 페이지에 몇 개의 로우 set
	private int beginPage;  //시작 페이지 수
	private int endPage;  //종료 페이지 수
	
	public PagingVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public PagingVO(int totCnt, int curPage, int totPage, int displayPage, int displayRow, int beginPage, int endPage) {
		super();
		this.totCnt = totCnt;
		this.curPage = curPage;
		this.totPage = totPage;
		this.displayPage = displayPage;
		this.displayRow = displayRow;
		this.beginPage = beginPage;
		this.endPage = endPage;
	}

	public int getTotCnt() {
		return totCnt;
	}

	public void setTotCnt(int totCnt) {
		this.totCnt = totCnt;
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getTotPage() {
		return totPage;
	}

	public void setTotPage(int totPage) {
		this.totPage = totPage;
	}

	public int getDisplayPage() {
		return displayPage;
	}

	public void setDisplayPage(int displayPage) {
		this.displayPage = displayPage;
	}

	public int getDisplayRow() {
		return displayRow;
	}

	public void setDisplayRow(int displayRow) {
		this.displayRow = displayRow;
	}

	public int getBeginPage() {
		return beginPage;
	}

	public void setBeginPage(int beginPage) {
		this.beginPage = beginPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	@Override
	public String toString() {
		return "PagingVO [totCnt=" + totCnt + ", curPage=" + curPage + ", totPage=" + totPage + ", displayPage="
				+ displayPage + ", displayRow=" + displayRow + ", beginPage=" + beginPage + ", endPage=" + endPage
				+ "]";
	}
	
	
}
