package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Account;
import com.model.Customer;
import com.model.Loan;
import com.service.AdminService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;

	@GetMapping("/home")
	public String home(HttpSession httpSession,Model model) {
		String accNum = String.valueOf(httpSession.getAttribute("accNum"));
		model.addAttribute("accNum", accNum);
		return "homepage";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession httpSession) {
		System.out.println("logout");
		httpSession.invalidate();
		return "redirect:/customer/login";
	}
	
	@GetMapping("/allcustomers")
	public String getAllCustomers(Model model) {
		List<Customer> allCustomers = adminService.getAllCustomers();
		if(allCustomers == null || allCustomers.isEmpty()) {
			model.addAttribute("msg","No Registered Customers");
			return "adminnodata";
		}
		model.addAttribute("customerlist",allCustomers);
		return "allcustomers";
	}
	
	@GetMapping("backtohomepage")
	public String backToHomepage() {
		return "redirect:/admin/home";
	}
	
	@GetMapping("allaccounts")
	public String allAccounts(Model model) {
		List<Account> allAccounts = adminService.getAllAcounts();
		if(allAccounts == null || allAccounts.isEmpty()) {
			model.addAttribute("msg","No Registered Accounts");
			return "adminnodata";
		}
		model.addAttribute("accounts",allAccounts);
		return "allaccounts";
	}
	
	@GetMapping("/reviewloans")
	public String reviewLoans(Model model) {
		List<Loan> allLoans = adminService.getAllLoans();
		if(allLoans == null || allLoans.isEmpty()) {
			model.addAttribute("msg","No LoanRequests");
			return "adminnodata";
		}
		model.addAttribute("loans", allLoans);
		return "reviewloans";
	}
	
	@GetMapping("/updatestatus")
	public String reviewLoans(@RequestParam(name ="id") String id,@RequestParam(name="status") String status) {
		adminService.updateStatus(id,status);
		return "redirect:/admin/reviewloans";
	}
	
	@GetMapping("/updateaccstatus")
	public String updateAccStatus(@RequestParam(name="id") String id,@RequestParam(name="status") String status) {
		adminService.updateAccStatus(id, status);
		return "redirect:/admin/allaccounts";
	}
	
	@GetMapping("/addamount")
	public String addAmount(@RequestParam(name="id") String id,@RequestParam(name="balance") double balance) {
		adminService.addAmount(id, balance);
		return "redirect:/admin/allaccounts";
	}
	
	
}
