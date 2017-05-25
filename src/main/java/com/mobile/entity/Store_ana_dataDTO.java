package com.mobile.entity;

import org.apache.ibatis.type.Alias;

@Alias("Store_ana_dataDTO")
public class Store_ana_dataDTO {
	
	private String sid;
	private String sname;
	private int vi_cou;
	private int re_cou;
	private int li_cou;
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public int getVi_cou() {
		return vi_cou;
	}
	public void setVi_cou(int vi_cou) {
		this.vi_cou = vi_cou;
	}
	public int getRe_cou() {
		return re_cou;
	}
	public void setRe_cou(int re_cou) {
		this.re_cou = re_cou;
	}
	public int getLi_cou() {
		return li_cou;
	}
	public void setLi_cou(int li_cou) {
		this.li_cou = li_cou;
	}
	public Store_ana_dataDTO(String sid, String sname, int vi_cou, int re_cou, int li_cou) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.vi_cou = vi_cou;
		this.re_cou = re_cou;
		this.li_cou = li_cou;
	}
	@Override
	public String toString() {
		return "Store_ana_dataDTO [sid=" + sid + ", sname=" + sname + ", vi_cou=" + vi_cou + ", re_cou=" + re_cou
				+ ", li_cou=" + li_cou + "]";
	}
	public Store_ana_dataDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
