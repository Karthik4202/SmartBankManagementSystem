package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.service.CustomerService;
import com.service.LoanService;
import com.model.Account;
import com.model.Customer;
import com.model.Loan;
import com.model.Transactions;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/account")
public class AccountController {
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private LoanService loanService;
	
	@GetMapping("viewbalance")
	public String viewBalance(HttpSession httpSession,Model model) {
		Customer customer = (Customer) httpSession.getAttribute("customer");
		Account account = customerService.getAccountByCustomer(customer);
		customer.setAccount(account);
		httpSession.setAttribute("customer", customer);
		model.addAttribute("name", customer.getName());
		model.addAttribute("balance",account.getBalance());
		return "balance";
	}
	
	@GetMapping("/backtoacc")
	public String backToAccount() {
		return "redirect:/customer/dashboard";
	}
	
	@GetMapping("/backtohome")
	public String backToHome() {
		return "redirect:/customer/home";
	}
	
	@GetMapping("/fundtransfer")
	public String goToFundTransfer() {
		return "fundtransfer";
	}
	
	@PostMapping("/fundtransfer")
	public String fundTransfer(@RequestParam(name="accNum") String recieverAccNum,
							   @RequestParam(name="amount") double sendAmount,
							   HttpSession httpSession,Model model) {
		Customer customer = (Customer)httpSession.getAttribute("customer");
		Customer reciever = customerService.getCustomerByAccount(recieverAccNum);
		if(reciever == null) {
			model.addAttribute("notfound","No customer associated with this account number. Please enter the correct Number.");
			return "fundtransfer";
		}
		double customerBalance = customer.getAccount().getBalance();
		String customerAccNum = customer.getAccount().getAccountNumber();
		if(customerBalance >= sendAmount) {
			customerService.transferFunds(customerAccNum, recieverAccNum, sendAmount);
			model.addAttribute("success", "Amount "+sendAmount+" Transfered Successfully To ");
			model.addAttribute("reciever",reciever.getName());
			Customer updatedCustomer = customerService.getCustomerByAccount(customerAccNum);
			httpSession.setAttribute("customer", updatedCustomer);
			return "fundtransfer";
		}
		model.addAttribute("insufficient","InSufficient Balance");
		return "fundtransfer";
	}
	
	@GetMapping("/transactions")
	public String transactions() {
		return "transaction";
	}
	
	@GetMapping("/credittransactions")
	public String creditTransactions(HttpSession httpSession, Model model) {
		Customer customer = (Customer)httpSession.getAttribute("customer");
		String accountNumber = customer.getAccount().getAccountNumber();
		List<Transactions> creditTransactions = customerService.getCreditTransactionsByAccNum(accountNumber);
		if(creditTransactions == null || creditTransactions.isEmpty()) {
			model.addAttribute("msg","No CreditTransactions Made");
			return "nodata";
		}
		model.addAttribute("creditTransactions",creditTransactions);
		return "credittransaction";
	}
	
	@GetMapping("/debittransactions")
	public String debitTransactions(HttpSession httpSession, Model model) {
		Customer customer = (Customer)httpSession.getAttribute("customer");
		String accountNumber = customer.getAccount().getAccountNumber();
		List<Transactions> debitTransactions = customerService.getDebitTransactionsByAccNum(accountNumber);
		System.out.println(debitTransactions);
		if(debitTransactions == null || debitTransactions.isEmpty()) {
			model.addAttribute("msg", "No DebitTransactions Made");
			return "nodata";
		}
		model.addAttribute("debitTransactions",debitTransactions);
		return "debittransaction";
	}
	
	@GetMapping("/applyloan")
	public String applyLoan(Model model) {
		model.addAttribute("loan",new Loan());
		return "applyloan";
	}
	
	@PostMapping("/applyloan")
	public String applyLoan(@ModelAttribute(name="loan") Loan loan, Model model, HttpSession httpSession) {
		Customer customer =(Customer) httpSession.getAttribute("customer");
		loan.setAccountNumber(customer.getAccount().getAccountNumber());
		loanService.applyLoan(loan);
		model.addAttribute("applied","Loan applied successfully");
		return "applyloan";
	}
	
	@GetMapping("/loanstatus")
	public String viewStatus(HttpSession httpSession,Model model) {
		Customer customer =(Customer) httpSession.getAttribute("customer");
		String accountNumber = customer.getAccount().getAccountNumber();
		List<Loan> loansByAccNum = loanService.getLoansByAccNum(accountNumber);
		if(loansByAccNum == null || loansByAccNum.isEmpty()) {
			model.addAttribute("msg", "No Loans Applied");
			return "nodata";
		} else {
			model.addAttribute("loans",loansByAccNum);
		}
		return "loanstatus";
	}
	
	@GetMapping("/ministatement")
	public String getMinistatement(HttpSession httpSession,Model model) {
		String accountNumber =(String) httpSession.getAttribute("accNum");
		List<Transactions> ministatement = customerService.getMinistatement(accountNumber);
		if(ministatement == null || ministatement.isEmpty()) {
			model.addAttribute("msg","No Transactions Made");
			return "nodata";
		}
		model.addAttribute("ministatement", ministatement);
		model.addAttribute("accNum", accountNumber);
		return "ministatement";
	}
	
	@GetMapping("/accdetails")
	public String accDetails(HttpSession httpSession,Model model) {
		Customer customer = (Customer) httpSession.getAttribute("customer");
		Account account = customer.getAccount();
		model.addAttribute("account",account);
		return "accdetails";
	}
	
	@PostMapping("/saveaccdetails")
	public String saveAccDetails(@ModelAttribute(name="account") Account account, HttpSession httpSession) {
		Customer customer = (Customer) httpSession.getAttribute("customer");
		Customer savedCustomer = customerService.saveAccount(account,customer);
		httpSession.setAttribute("customer", savedCustomer);
		return "redirect:/account/accdetails";
	}
}
