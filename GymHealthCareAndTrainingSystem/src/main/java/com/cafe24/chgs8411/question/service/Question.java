/* 김소희 2018-09-27 / Question */
package com.cafe24.chgs8411.question.service;

public class Question {
	private int questionNo;
	private int memberNo;
	private int trainerNo;
	private String questionTitle;
	private String questionContent;
	private String questionDate;
	
	public int getQuestionNo() {
		return questionNo;
	}
	public void setQuestionNo(int questionNo) {
		this.questionNo = questionNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public int getTrainerNo() {
		return trainerNo;
	}
	public void setTrainerNo(int trainerNo) {
		this.trainerNo = trainerNo;
	}
	public String getQuestionTitle() {
		return questionTitle;
	}
	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}
	public String getQuestionContent() {
		return questionContent;
	}
	public void setQuestionContent(String questionContent) {
		this.questionContent = questionContent;
	}
	public String getQuestionDate() {
		return questionDate;
	}
	public void setQuestionDate(String questionDate) {
		this.questionDate = questionDate;
	}
	
	

}
