package com.app.kaka.fav.model;

public class FavVO {
	private String memberId;
	private String favOut;
	private String favIn;
	private String favCon;
	private String favSafe;
	private String favAa;
	private String favTune;
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getFavOut() {
		return favOut;
	}
	public void setFavOut(String favOut) {
		this.favOut = favOut;
	}
	public String getFavIn() {
		return favIn;
	}
	public void setFavIn(String favIn) {
		this.favIn = favIn;
	}
	public String getFavCon() {
		return favCon;
	}
	public void setFavCon(String favCon) {
		this.favCon = favCon;
	}
	public String getFavSafe() {
		return favSafe;
	}
	public void setFavSafe(String favSafe) {
		this.favSafe = favSafe;
	}
	public String getFavAa() {
		return favAa;
	}
	public void setFavAa(String favAa) {
		this.favAa = favAa;
	}
	public String getFavTune() {
		return favTune;
	}
	public void setFavTune(String favTune) {
		this.favTune = favTune;
	}
	@Override
	public String toString() {
		return "FavVO [memberId=" + memberId + ", favOut=" + favOut + ", favIn=" + favIn + ", favCon=" + favCon
				+ ", favSafe=" + favSafe + ", favAa=" + favAa + ", favTune=" + favTune + "]";
	}
}
