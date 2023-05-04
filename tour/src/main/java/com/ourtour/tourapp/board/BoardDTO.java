package com.ourtour.tourapp.board;
import java.util.List;
import org.springframework.web.multipart.MultipartFile;
public class BoardDTO {
	private int boardNo;
	private String category;
	private String title;
	private String userID;
	private String content;
	private String writedate;
	private int view;
	private int like;
	private List<MultipartFile> files;
	
	public BoardDTO() {
		
	}
	
	public BoardDTO(int boardNo, String category, String title, String userID, String content, String writedate,
			int view, int like) {
		super();
		this.boardNo = boardNo;
		this.category = category;
		this.title = title;
		this.userID = userID;
		this.content = content;
		this.writedate = writedate;
		this.view = view;
		this.like = like;
	}
	
	public BoardDTO(int boardNo, String category, String title, String userID, String content, String writedate,
			int view, int like, List<MultipartFile> files) {
		super();
		this.boardNo = boardNo;
		this.category = category;
		this.title = title;
		this.userID = userID;
		this.content = content;
		this.writedate = writedate;
		this.view = view;
		this.like = like;
		this.files = files;
	}

	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "BoardDTO [boardNo=" + boardNo + ", category=" + category + ", title=" + title + ", userID=" + userID
				+ ", content=" + content + ", writedate=" + writedate + ", view=" + view + ", like=" + like + ", files="
				+ files + "]";
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

	public List<MultipartFile> getFiles() {
		return files;
	}

	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}
	
}
