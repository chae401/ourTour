package com.ourtour.tourapp.board;
public class BoardFileDTO {
	private int boardNo;
	private String originalFilename;
	private String storeFilename;
	private int imageFileno;
	
	public BoardFileDTO() {
		
	}
	public BoardFileDTO(int boardNo, String originalFilename, String storeFilename, int imageFileno) {
		super();
		this.boardNo = boardNo;
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
		this.imageFileno = imageFileno;
	}
	
	public BoardFileDTO(String originalFilename, String storeFilename) {
		super();
		this.originalFilename = originalFilename;
		this.storeFilename = storeFilename;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getOriginalFilename() {
		return originalFilename;
	}
	public void setOriginalFilename(String originalFilename) {
		this.originalFilename = originalFilename;
	}
	public String getStoreFilename() {
		return storeFilename;
	}
	public void setStoreFilename(String storeFilename) {
		this.storeFilename = storeFilename;
	}
	public int getImageFileno() {
		return imageFileno;
	}
	public void setImageFileno(int imageFileno) {
		this.imageFileno = imageFileno;
	}
	
	
}
