package com.ourtour.tourapp.board;
public class BoardDTO {
	private int boardNo;
	private String title;
	private String userID;
	private String content;
	private String writedate;
	private int view;
	private int like;
	
	@Override
	public String toString() {
		return "BoardDTO [boardNo=" + boardNo + ", title=" + title + ", userID=" + userID + ", content=" + content
				+ ", writedate=" + writedate + ", view=" + view + ", like=" + like + "]";
	}
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	public int getLike() {
		return like;
	}
	public void setLike(int like) {
		this.like = like;
	}
	
}
