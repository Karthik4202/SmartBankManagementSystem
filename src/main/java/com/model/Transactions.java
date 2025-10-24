package com.model;

import java.time.LocalDateTime;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;

@Entity
@Table(name="transactions")
public class Transactions {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int transactionId;
	
	@Column(name="sender_acc_num")
	private String senderAccountNumber;
	
	@Column(name="reciever_acc_num")
	private String recieverAccountNumber;
	
	private double amount;

	private LocalDateTime transactionDateAndTime;

    public Transactions(String senderAccountNumber, String recieverAccountNumber, double amount,
			LocalDateTime transactionDateAndTime, Account account) {
		super();
		this.senderAccountNumber = senderAccountNumber;
		this.recieverAccountNumber = recieverAccountNumber;
		this.amount = amount;
		this.transactionDateAndTime = transactionDateAndTime;
		this.account = account;
	}


	public Transactions(int transactionId, String senderAccountNumber, String recieverAccountNumber, double amount,
			LocalDateTime transactionDateAndTime, Account account) {
		super();
		this.transactionId = transactionId;
		this.senderAccountNumber = senderAccountNumber;
		this.recieverAccountNumber = recieverAccountNumber;
		this.amount = amount;
		this.transactionDateAndTime = transactionDateAndTime;
		this.account = account;
	}


	public LocalDateTime getTransactionDateAndTime() {
		return transactionDateAndTime;
	}


	public void setTransactionDateAndTime(LocalDateTime transactionDateAndTime) {
		this.transactionDateAndTime = transactionDateAndTime;
	}


	@PrePersist
    public void prePersist() {
        this.transactionDateAndTime = LocalDateTime.now(); 
    }
	
	@ManyToOne
	@JoinColumn(name="account_id")
	private Account account;
	
	public Account getAccount() {
		return account;
	}


	public void setAccount(Account account) {
		this.account = account;
	}


	public Transactions() {
		// TODO Auto-generated constructor stub
	}

	
	public int getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}

	public String getSenderAccountNumber() {
		return senderAccountNumber;
	}

	public void setSenderAccountNumber(String senderAccountNumber) {
		this.senderAccountNumber = senderAccountNumber;
	}

	public String getRecieverAccountNumber() {
		return recieverAccountNumber;
	}

	public void setRecieverAccountNumber(String recieverAccountNumber) {
		this.recieverAccountNumber = recieverAccountNumber;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public Transactions(String senderAccountNumber, String recieverAccountNumber, double amount) {
		super();
		this.senderAccountNumber = senderAccountNumber;
		this.recieverAccountNumber = recieverAccountNumber;
		this.amount = amount;
	}

	public Transactions(int transactionId, String senderAccountNumber, String recieverAccountNumber, double amount) {
		super();
		this.transactionId = transactionId;
		this.senderAccountNumber = senderAccountNumber;
		this.recieverAccountNumber = recieverAccountNumber;
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "Transcation [transactionId=" + transactionId + ", senderAccountNumber=" + senderAccountNumber
				+ ", recieverAccountNumber=" + recieverAccountNumber + ", amount=" + amount + "]";
	}
	
	

}
