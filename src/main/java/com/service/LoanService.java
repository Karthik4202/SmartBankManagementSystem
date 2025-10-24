package com.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BankRepository;
import com.model.Loan;
import jakarta.transaction.Transactional;

@Transactional
@Service
public class LoanService {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		return session;
	}
	
	public void applyLoan(Loan loan) {
		Session session = getSession();
		loan.setStatus("Applied");
		session.persist(loan);
	}
	
	public List<Loan> getLoansByAccNum(String accountNumber) {
		Session session = getSession();
		NativeQuery<Loan> nativeQuery = session.createNativeQuery(BankRepository.GET_LOANS_BY_ACCOUNTNUMBER,Loan.class);
		nativeQuery.setParameter("accNum", accountNumber);
		List<Loan> loans = nativeQuery.list();
		if(loans.isEmpty()) {
			return null;
		}
		return loans;
	}
	
}
