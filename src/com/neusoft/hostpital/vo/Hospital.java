package com.neusoft.hostpital.vo;

public class Hospital {

	private int hospital_id;
	private String hospital_no;
	private String hospital_name;
	private int hospital_level;
	private String hospital_phone;

	public int getHospital_id() {
		return hospital_id;
	}

	public void setHospital_id(int hospital_id) {
		this.hospital_id = hospital_id;
	}

	public String getHospital_no() {
		return hospital_no;
	}

	public void setHospital_no(String hospital_no) {
		this.hospital_no = hospital_no;
	}

	public String getHospital_name() {
		return hospital_name;
	}

	public void setHospital_name(String hospital_name) {
		this.hospital_name = hospital_name;
	}

	public int getHospital_level() {
		return hospital_level;
	}

	public void setHospital_level(int hospital_level) {
		this.hospital_level = hospital_level;
	}

	public String getHospital_phone() {
		return hospital_phone;
	}

	public void setHospital_phone(String hospital_phone) {
		this.hospital_phone = hospital_phone;
	}

	@Override
	public String toString() {
		return "Hospital [hospital_id=" + hospital_id + ", hospital_no=" + hospital_no + ", hospital_name="
				+ hospital_name + ", hospital_level=" + hospital_level + ", hospital_phone=" + hospital_phone + "]";
	}

	public Hospital(int hospital_id, String hospital_no, String hospital_name, int hospital_level,
			String hospital_phone) {
		super();
		this.hospital_id = hospital_id;
		this.hospital_no = hospital_no;
		this.hospital_name = hospital_name;
		this.hospital_level = hospital_level;
		this.hospital_phone = hospital_phone;
	}

	public Hospital() {
		super();
		// TODO Auto-generated constructor stub
	}

}
