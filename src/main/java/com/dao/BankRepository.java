package com.dao;

public class BankRepository {

	public static  final String GET_MINISTATEMENT = "select * from transactions where sender_acc_num= :accNum or reciever_acc_num= :accNum ORDER BY transactionDateAndTime desc LIMIT 5";

	public static final String GET_LOANS_BY_ACCOUNTNUMBER = "select * from loans where accountNumber= :accNum";

	public static final String GET_DEBITTRANSACTIONS_BY_ACCNUM = "select * from transactions where sender_acc_num= :accNum";

	public static final String GET_BY_ACCOUNTNUMBER = "select * from accounts where accountNumber= :accNum";
	
	public static final String GET_ALL_CUSTOMERS = "select * from customers where role='USER'";
	
	public static final String GET_ALL_ACCOUNTS = "select * from accounts";
	
	public static final String GET_CREDITTRANSACTIONS_BY_ACCNUM = "select * from transactions where reciever_acc_num= :accNum";

	public static final String GET_ALL_LOANS = "select * from loans";
	
	public static final String GET_CUSTOMER_BY_EMAIL = "select * from customers where email =:email";
	
}
