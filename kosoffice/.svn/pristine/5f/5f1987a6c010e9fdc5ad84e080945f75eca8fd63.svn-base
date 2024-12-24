package com.koffice.VO.common;

public class PageVO {

	private int total;
	private int countPerPage=10;
	private int currentPage=1;
	private int startPage;
	private int endPage;
	private int rn;
	
	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getCountPerPage() {
		return countPerPage;
	}

	public void setCountPerPage(int countPerPage) {
		this.countPerPage = countPerPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	
	
	public int getStartPage() {
		return currentPage/countPerPage+1;
	}
	
	public int getEndPage() {
		return total/countPerPage+1;
	}

	public int getRn() {
		return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
	}
	
}
