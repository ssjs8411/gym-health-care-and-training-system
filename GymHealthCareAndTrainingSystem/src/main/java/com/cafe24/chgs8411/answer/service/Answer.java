//2018-10-11 김소희
package com.cafe24.chgs8411.answer.service;

public class Answer {
	
		/* 	답변 번호
			질문 번호
			트레이너 번호
			답변 제목
			답변 내용
			답변 날짜
			
		  */
		private int answer_no;
		private int question_no;
		private int trainer_no;
		private String answer_title;
		private String answer_content;
		private String answer_date;
		
		public int getAnswer_no() {
			return answer_no;
		}
		public void setAnswer_no(int answer_no) {
			this.answer_no = answer_no;
		}
		public int getQuestion_no() {
			return question_no;
		}
		public void setQuestion_no(int question_no) {
			this.question_no = question_no;
		}
		public int getTrainer_no() {
			return trainer_no;
		}
		public void setTrainer_no(int trainer_no) {
			this.trainer_no = trainer_no;
		}
		public String getNswer_title() {
			return answer_title;
		}
		public void setNswer_title(String nswer_title) {
			this.answer_title = nswer_title;
		}
		public String getAnswer_content() {
			return answer_content;
		}
		public void setAnswer_content(String answer_content) {
			this.answer_content = answer_content;
		}
		public String getAnswer_date() {
			return answer_date;
		}
		public void setAnswer_date(String answer_date) {
			this.answer_date = answer_date;
		}
		
		

}
