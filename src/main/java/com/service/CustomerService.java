package com.service;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.model.Account;
import com.model.Customer;
import com.model.Transactions;
import com.dao.BankRepository;

import jakarta.servlet.http.HttpSession;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class CustomerService {
	
	@Autowired
	private JavaMailSender javaMailSender;

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		return session;
	}
	
	public List<String> customerRegistration(Customer customer) {
		Session session = getSession();
		Account account = new Account();
		account.setAccountNumber(generateAccountNumber());
		account.setBalance(0);
		account.setPassword(generatePassword());
		account.setAccountStatus("Deactivated");
		account.setCustomer(customer);
		customer.setAccount(account);
		session.persist(customer);
		String name = customer.getName();
		String accountNumber = customer.getAccount().getAccountNumber();
		String password = customer.getAccount().getPassword();
		List<String> list = new ArrayList<String>();
		list.add(name);
		list.add(accountNumber);
		list.add(password);
		return list;
	}

	public int resetPassword(String currentPassword,String newPassword, String confirmPassword, int customerId) {
		Session session = getSession();
		Customer customer = session.find(Customer.class, customerId);
		Account account = customer.getAccount();
		if(customer.getAccount().getPassword().equals(currentPassword)) {
			if(newPassword.equals(confirmPassword)) {
				account.setPassword(confirmPassword);
				return 1;
			} else {
				return 0;
			}
		}
		return -1;
	}
	
	public Customer getCustomerByAccount(String accountNumber) {
		Session session = getSession();
		NativeQuery<Account> query = session.createNativeQuery(BankRepository.GET_BY_ACCOUNTNUMBER,Account.class);
		query.setParameter("accNum", accountNumber);
		Account account = query.uniqueResult();
		if(account == null) {
			return null;
		}
		Customer customer = account.getCustomer();
		return customer;
	
	}
	
	public void mailSender(String email, String otp) {
		SimpleMailMessage mail = new SimpleMailMessage();
		mail.setFrom("kamunikarthikkumar@gmail.com");
		mail.setTo(email);
		mail.setSubject("Otp for Login to SmartBanking");
		mail.setText("Your OTP for login is : "+otp);
		
		javaMailSender.send(mail);
	}
	
	public String otpGenerator() {
		SecureRandom random = new SecureRandom();
		int randomInt = random.nextInt(9000) + 1000; 
		String otp = String.valueOf(randomInt);
		return otp;
	}
	
	public void transferFunds(String senderAccNum,String recieverAccNum,double funds) {
		Customer sender = getCustomerByAccount(senderAccNum);
		Customer reciever = getCustomerByAccount(recieverAccNum);
		Account recieverAcc = reciever.getAccount();
		
		double recieverBalance = recieverAcc.getBalance();
		double recieverNewBalance = recieverBalance + funds;
		recieverAcc.setBalance(recieverNewBalance);
		reciever.setAccount(recieverAcc);
		
		Account senderAcc = sender.getAccount();
		double senderBalance = senderAcc.getBalance();
		double senderNewBalance = senderBalance - funds;
		senderAcc.setBalance(senderNewBalance);
		sender.setAccount(senderAcc);
		
		Transactions transaction = new Transactions();
		transaction.setRecieverAccountNumber(recieverAccNum);
		transaction.setSenderAccountNumber(senderAccNum);
		transaction.setAmount(funds);
		
		addTransaction(transaction);
		
	}
	
	public void addTransaction(Transactions transaction) {
		Session session = getSession();
		session.persist(transaction);
	}
	
	public List<Transactions> getCreditTransactionsByAccNum(String accountNumber) {
		Session session = getSession();
		NativeQuery<Transactions> nativeQuery = session.createNativeQuery(BankRepository.GET_CREDITTRANSACTIONS_BY_ACCNUM,Transactions.class);
		nativeQuery.setParameter("accNum", accountNumber);
		List<Transactions> creditTransactions = nativeQuery.list();
		
		return creditTransactions;
	}

	public List<Transactions> getDebitTransactionsByAccNum(String accountNumber) {
		Session session = getSession();
		NativeQuery<Transactions> nativeQuery = session.createNativeQuery(BankRepository.GET_DEBITTRANSACTIONS_BY_ACCNUM,Transactions.class);
		nativeQuery.setParameter("accNum", accountNumber);
		List<Transactions> debitTransactions = nativeQuery.list();
		
		return debitTransactions;
	}

	public List<Transactions> getMinistatement(String accountNumber) {
		Session session = getSession();
		NativeQuery<Transactions> nativeQuery = session.createNativeQuery(BankRepository.GET_MINISTATEMENT, Transactions.class);
		nativeQuery.setParameter("accNum", accountNumber);
		List<Transactions> ministatement = nativeQuery.list();
		return ministatement;
	}

	public Customer saveCustomer(Customer updatedCustomer) {
		Session session = getSession();
		int customerId = updatedCustomer.getCustomerId();
		Customer customer = session.find(Customer.class, customerId);
		updatedCustomer.setGender(customer.getGender());
		updatedCustomer.setRole("user");
		updatedCustomer.setAccount(customer.getAccount());
		Customer savedCustomer = session.merge(updatedCustomer);
		return savedCustomer;
	}

	public Customer saveAccount(Account account, Customer customer) {
		Session session = getSession();
		Account originalAccount = customer.getAccount();
		String password = account.getPassword();
		originalAccount.setPassword(password);
		originalAccount.setAccountStatus("Activated");
		customer.setAccount(originalAccount);
		Customer savedCustomer = session.merge(customer);
		return savedCustomer;
	}
	
	private String generatePassword() {
		 String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
		 int length = chars.length();
		 SecureRandom rand = new SecureRandom();
		 StringBuilder sb = new StringBuilder();
		 
		 for(int i = 0; i < 10; i++) {
			 int nextInt = rand.nextInt(length);
			 sb.append(chars.charAt(nextInt));
		 }
		 String pass = sb.toString();
		 return pass;
	}
	
	private String generateAccountNumber() {
		String chars ="0123456789";
		int length = chars.length();
		SecureRandom rand = new SecureRandom();
		StringBuilder sb = new StringBuilder();
		
		for(int i = 0; i < 12; i++) {
			int nextInt = rand.nextInt(length);
			sb.append(chars.charAt(nextInt));
		}
		String accNum = sb.toString();
		return accNum;
	}
	
	public Customer getCustomerByEmail(String email) {
		Session session = getSession();
		NativeQuery<Customer> nativeQuery = session.createNativeQuery(BankRepository.GET_CUSTOMER_BY_EMAIL,Customer.class);
		nativeQuery.setParameter("email", email);
		Customer customer = nativeQuery.uniqueResult();
		return customer;
	}
	
	public void resetPassword(Customer customer, Account account, String password) {
		Session session = getSession();
		account.setPassword(password);
		customer.setAccount(account);
		session.merge(customer);
	}
	
	public Account getAccountByCustomer(Customer customer) {
		Session session = getSession();
		int id = customer.getAccount().getId();
		Account account = session.find(Account.class, id);
		return account;
	}
}
