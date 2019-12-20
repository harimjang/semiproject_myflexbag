package com.vo;

import java.util.ArrayList;
import java.util.Date;

public class OrderVO {
	int orderno;
	String userid;
	String payid; 
	String deliid;
	Date odate;
	String receiver;
	String orderphon;
	String address;
	int quantitysum;
	int pricesum;
	String gender;
	ArrayList<CartVO> cartList;
	
	
	public ArrayList<CartVO> getCartList() {
		return cartList;
	}
	public void setCartList(ArrayList<CartVO> cartList) {
		this.cartList = cartList;
	}
	public int getOrderno() {
		return orderno;
	}
	public void setOrderno(int orderno) {
		this.orderno = orderno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPayid() {
		return payid;
	}
	public void setPayid(String payid) {
		this.payid = payid;
	}
	public String getDeliid() {
		return deliid;
	}
	public void setDeliid(String deliid) {
		this.deliid = deliid;
	}
	public Date getOdate() {
		return odate;
	}
	public void setOdate(Date odate) {
		this.odate = odate;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getOrderphon() {
		return orderphon;
	}
	public void setOrderphon(String orderphon) {
		this.orderphon = orderphon;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getQuantitysum() {
		return quantitysum;
	}
	public void setQuantitysum(int quantitysum) {
		this.quantitysum = quantitysum;
	}
	public int getPricesum() {
		return pricesum;
	}
	public void setPricesum(int pricesum) {
		this.pricesum = pricesum;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "OrderVO [orderno=" + orderno + ", userid=" + userid + ", payid=" + payid + ", deliid=" + deliid
				+ ", odate=" + odate + ", receiver=" + receiver + ", orderphon=" + orderphon + ", address=" + address
				+ ", quantitysum=" + quantitysum + ", pricesum=" + pricesum + ", gender=" + gender + "]";
	}
	
	
	
	
}
