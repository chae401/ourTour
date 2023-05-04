package com.ourtour.tourapp.reply;
public class ReplyDTO {
	private int replyNo;
	private int boardNo;
	private String writedate;
	private String text;
	private String userID;
	
	public ReplyDTO() {
		
	}
	public ReplyDTO(String text) {
		this.text = text;
	}
	public ReplyDTO(int replyNo, int boardNo, String writedate, String text, String userID) {
		super();
		this.replyNo = replyNo;
		this.boardNo = boardNo;
		this.writedate = writedate;
		this.text = text;
		this.userID = userID;
	}

	@Override
	public String toString() {
		return "ReplyDTO [replyNo=" + replyNo + ", boardNo=" + boardNo + ", writedate=" + writedate + ", text="
				+ text + ", userID=" + userID + "]";
	}

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getWritedate() {
		return writedate;
	}

	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}
		
}
