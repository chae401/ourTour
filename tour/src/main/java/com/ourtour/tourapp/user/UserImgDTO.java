package com.ourtour.tourapp.user;
public class UserImgDTO {
	private int photoNo;
	private String userID;
	private String photoaddr;
	
	@Override
	public String toString() {
		return "UserImgDTO [photoNo=" + photoNo + ", userID=" + userID + ", photoaddr=" + photoaddr + "]";
	}
	public int getPhotoNo() {
		return photoNo;
	}
	public void setPhotoNo(int photoNo) {
		this.photoNo = photoNo;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getPhotoaddr() {
		return photoaddr;
	}
	public void setPhotoaddr(String photoaddr) {
		this.photoaddr = photoaddr;
	}
	
}
