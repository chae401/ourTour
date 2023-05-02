package com.ourtour.tourapp.board;
public class UploadImgDTO {
	private int photoNo;
	private int boardNo;
	private String imgAddr;
		
	@Override
	public String toString() {
		return "UploadImgDTO [photoNo=" + photoNo + ", boardNo=" + boardNo + ", imgAddr=" + imgAddr + "]";
	}
	public int getPhotoNo() {
		return photoNo;
	}
	public void setPhotoNo(int photoNo) {
		this.photoNo = photoNo;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getImgAddr() {
		return imgAddr;
	}
	public void setImgAddr(String imgAddr) {
		this.imgAddr = imgAddr;
	}
	
}
