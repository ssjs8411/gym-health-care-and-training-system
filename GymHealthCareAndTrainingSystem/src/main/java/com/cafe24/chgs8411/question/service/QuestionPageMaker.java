package com.cafe24.chgs8411.question.service;

public class QuestionPageMaker {
	// 페이징 테스트 파일
	private int totalCount;			// 전체 게시물 개수
	private int pageNum;			// 현재 페이지 번호
	private int contentNum = 10;	// 한 페이지에 표시할 게시글 수
	private int startPage = 1;		// 현재 페이지 블록의 시작 페이지
	private int endPage = 5;		// 현재 페이지 블록의 마지막 페이지
	private boolean prev = false;	// 이전 페이지 화살표 
	private boolean next;			// 다음 페이지 화살표
	private int currentBlock;		// 현재 페이지 블록
	private int lastBlock;			// 마지막 페이지 블록
	
	// 화살표 메소드
	public void prevNext (int pageNum) {
		if(pageNum>0 && pageNum<6) {
			setPrev(false);
			setNext(true);
		}else if(getLastBlock() == getCurrentBlock()) {
			setPrev(true);
			setNext(false);
		}else {
			setPrev(true);
			setNext(true);
		}
	}
	
	// 페이징 메소드
	public int calcPage (int totalCount, int contentNum){

		int totalPage = totalCount / contentNum;
		if(totalCount % contentNum>0){
		totalPage++;
		}
		return totalPage;
	}
	
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getContentNum() {
		return contentNum;
	}
	public void setContentNum(int contentNum) {
		this.contentNum = contentNum;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int currnetBlock) {
		this.startPage = (currnetBlock*5)-4;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int getLastBlock, int getCurrentBlock) {
		if(getLastBlock == getCurrentBlock) {
			this.endPage = calcPage(getTotalCount(), getContentNum());
		}else {
			this.endPage = getStartPage()+4;
		}
		
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getCurrentBlock() {
		return currentBlock;
	}
	public void setCurrentBlock(int pageNum) {
		// 페이지 번호를 통해서 구한다

		this.currentBlock = pageNum/5;
		if(pageNum%5>0) {
			this.currentBlock++;
		}
	}
	public int getLastBlock() {
		return lastBlock;
	}
	public void setLastBlock(int lastBlock) {
		//10 , 5 -> 10 *5 = 50
		this.lastBlock = totalCount / (5*this.contentNum);
		if(totalCount % (5*this.contentNum)>0) {
			this.lastBlock++;
		}
	}
	
	

}
