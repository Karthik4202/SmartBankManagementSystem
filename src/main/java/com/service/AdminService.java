package com.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.Account;
import com.model.Customer;
import com.model.Loan;
import com.dao.BankRepository;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class AdminService {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		return session;
	}
	public List<Customer> getAllCustomers() {
		Session session = getSession();
		NativeQuery<Customer> nativeQuery = session.createNativeQuery(BankRepository.GET_ALL_CUSTOMERS,Customer.class);
		List<Customer> customerList = nativeQuery.list();
		return customerList;
	}
	
	public List<Account> getAllAcounts() {
		Session session = getSession();
		NativeQuery<Account> nativeQuery = session.createNativeQuery(BankRepository.GET_ALL_ACCOUNTS,Account.class);
		List<Account> accounts = nativeQuery.list();
		return accounts;
	}
	public List<Loan> getAllLoans() {
		Session session = getSession();
		NativeQuery<Loan> nativeQuery = session.createNativeQuery(BankRepository.GET_ALL_LOANS,Loan.class);
		List<Loan> allLoans = nativeQuery.list();
		return allLoans;
		
	}
	public Loan updateStatus(String id, String status) {
		Session session = getSession();
		Loan loan = session.find(Loan.class, id);
		loan.setStatus(status);
		return loan;
		
	}
	
	public void updateAccStatus(String id, String status) {
		Session session = getSession();
		Account account = session.find(Account.class,id);
		account.setAccountStatus(status);
	}
	public void addAmount(String id, double balance) {
		Session session = getSession();
		Account account = session.find(Account.class, id);
		double originalBalance = account.getBalance();
		account.setBalance(originalBalance + balance);
	}
}
