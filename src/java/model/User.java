/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author joel yohannan
 */
public class User {
    private int uid;
    private String fName;
    private String lName;
    private String uname;
    private String pwd;
    
    public User(int uid, String fName, String lName, String uname, String pwd) {
		
	this.uid = uid;
	this.fName = fName;
	this.lName = lName;
	this.uname = uname;
	this.pwd = pwd;
		
	}
	
	public User() {
		}
   
    public Integer getUid() {
		return uid;
	}

	public void setFname(Integer uid) {
		this.uid = uid;
	}     
    
   public String getFname() {
		return fName;
	}

	public void setFname(String fName) {
		this.fName = fName;
	}

	public String getLname() {
		return lName;
	}

	public void setLname(String lName) {
		this.lName = lName;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}     
        
        
    
}
