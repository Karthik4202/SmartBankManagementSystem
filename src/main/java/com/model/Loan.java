package com.model;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;

@Entity
@Table(name="loans")
public class Loan {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int loanId;
	
	@Column(nullable = false)
	private String accountNumber;
	
	private double loanAmount;
	
	private String loanType;
	
	private String status;
	
	private LocalDateTime appliedDateAndTime;
	
	@PrePersist
    public void prePersist() {
        this.appliedDateAndTime = LocalDateTime.now(); 
    }
	
	public Loan() {
	}

	
	
	public Loan(String accountNumber, double loanAmount, String loanType, String status,
			LocalDateTime appliedDateAndTime) {
		super();
		this.accountNumber = accountNumber;
		this.loanAmount = loanAmount;
		this.loanType = loanType;
		this.status = status;
		this.appliedDateAndTime = appliedDateAndTime;
	}



	public Loan(int loanId, String accountNumber, double loanAmount, String loanType, String status,
			LocalDateTime appliedDateAndTime) {
		super();
		this.loanId = loanId;
		this.accountNumber = accountNumber;
		this.loanAmount = loanAmount;
		this.loanType = loanType;
		this.status = status;
		this.appliedDateAndTime = appliedDateAndTime;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	public LocalDateTime getAppliedDateAndTime() {
		return appliedDateAndTime;
	}



	public void setAppliedDateAndTime(LocalDateTime appliedDateAndTime) {
		this.appliedDateAndTime = appliedDateAndTime;
	}



	public int getLoanId() {
		return loanId;
	}

	public void setLoanId(int loanId) {
		this.loanId = loanId;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public double getLoanAmount() {
		return loanAmount;
	}

	public void setLoanAmount(double loanAmount) {
		this.loanAmount = loanAmount;
	}

	public String getLoanType() {
		return loanType;
	}

	public void setLoanType(String loanType) {
		this.loanType = loanType;
	}



	@Override
	public String toString() {
		return "Loan [loanId=" + loanId + ", accountNumber=" + accountNumber + ", loanAmount=" + loanAmount
				+ ", loanType=" + loanType + "]";
	}
	
	

	
}
