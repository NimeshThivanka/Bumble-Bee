package com.CIS.loan.model;

import java.sql.Date;

public class customer {  
private String customerId;  
private String fullName;  
private String dateOfBirth;  
private String email;
private int phone;
private String password;
private double loanBalance;
private double userAmount;
private double installmentPlan;


public double getLoanBalance() {
	return loanBalance;
}
public void setLoanBalance(double loanBalance) {
	this.loanBalance = loanBalance;
}
public double getUserAmount() {
	return userAmount;
}
public void setUserAmount(double userAmount) {
	this.userAmount = userAmount;
}
public double getInstallmentPlan() {
	return installmentPlan;
}
public void setInstallmentPlan(double installmentPlan) {
	this.installmentPlan = installmentPlan;
}
public String getCustomerId() {
	return customerId;
}
public void setCustomerId(String customerId) {
	this.customerId = customerId;
}
public String getFullName() {
	return fullName;
}
public void setFullName(String fullName) {
	this.fullName = fullName;
}
public String getDateOfBirth() {
	return dateOfBirth;
}
public void setDateOfBirth(String dateOfBirth) {
	this.dateOfBirth = dateOfBirth;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public int getPhone() {
	return phone;
}
public void setPhone(int phone) {
	this.phone = phone;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}



  

  
}  