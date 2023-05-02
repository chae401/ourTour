package com.ourtour.tourapp.board;
public class ReplyDTO {
	private String replyNo;
	private int boardNo;
	private String writedate;
	private String replycontent;
	private String userID;
	
	@Override
	public String toString() {
		return "ReplyDTO [replyNo=" + replyNo + ", boardNo=" + boardNo + ", writedate=" + writedate + ", replycontent="
				+ replycontent + ", userID=" + userID + "]";
	}

	public String getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(String replyNo) {
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

	public String getReplycontent() {
		return replycontent;
	}

	public void setReplycontent(String replycontent) {
		this.replycontent = replycontent;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}
	
	
}
