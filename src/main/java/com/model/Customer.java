package com.model;

import java.time.LocalDate;
import java.time.LocalDateTime;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;

@Entity
@Table(name="customers")
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int customerId;
	
	private String name;
	
	private String age;
	
	private String gender;
	
	private String occupation;
	
	private LocalDate dateOfBirth;
	
	@Column(unique = true)
	private String email;
	
	@Column(unique = true)
	private String aadharNumber;
	
	@Column(unique = true)
	private String phoneNumber;
	
	@Embedded
	private Address address;
	
	public String role;
	
	@OneToOne(mappedBy = "customer",cascade = CascadeType.ALL)
	private Account account;
	
	private LocalDateTime registeredAt;

    public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}


	@PrePersist
    public void prePersist() {
        this.registeredAt = LocalDateTime.now();
        this.role= "USER";
    }

    
	public Customer(int customerId, String name, String age, String gender, String occupation, LocalDate dateOfBirth,
			String email, String aadharNumber, String phoneNumber, Address address, String role, Account account,
			LocalDateTime registeredAt) {
		super();
		this.customerId = customerId;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.occupation = occupation;
		this.dateOfBirth = dateOfBirth;
		this.email = email;
		this.aadharNumber = aadharNumber;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.role = role;
		this.account = account;
		this.registeredAt = registeredAt;
	}


	public Customer(String name, String age, String gender, String occupation, LocalDate dateOfBirth, String email,
			String aadharNumber, String phoneNumber, Address address, Account account, 
			LocalDateTime registeredAt) {
		super();
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.occupation = occupation;
		this.dateOfBirth = dateOfBirth;
		this.email = email;
		this.aadharNumber = aadharNumber;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.account = account;
		this.registeredAt = registeredAt;
	}


	public Account getAccount() {
		return account;
	}


	public void setAccount(Account account) {
		this.account = account;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public LocalDate getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(LocalDate dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAadharNumber() {
		return aadharNumber;
	}

	public void setAadharNumber(String aadharNumber) {
		this.aadharNumber = aadharNumber;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	
	
	public LocalDateTime getRegisteredAt() {
		return registeredAt;
	}

	public void setRegisteredAt(LocalDateTime registeredAt) {
		this.registeredAt = registeredAt;
	}

	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Customer(String name, String age, String gender, String occupation, LocalDate dateOfBirth, String email,
			String aadharNumber, String phoneNumber, Address address) {
		super();
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.occupation = occupation;
		this.dateOfBirth = dateOfBirth;
		this.email = email;
		this.aadharNumber = aadharNumber;
		this.phoneNumber = phoneNumber;
		this.address = address;
	}

	public Customer(int customerId, String name, String age, String gender, String occupation, LocalDate dateOfBirth,
			String email, String aadharNumber, String phoneNumber, Address address, LocalDateTime registeredAt) {
		super();
		this.customerId = customerId;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.occupation = occupation;
		this.dateOfBirth = dateOfBirth;
		this.email = email;
		this.aadharNumber = aadharNumber;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.registeredAt = registeredAt;
	}


	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", name=" + name + ", age=" + age + ", gender=" + gender
				+ ", occupation=" + occupation + ", dateOfBirth=" + dateOfBirth + ", email=" + email + ", aadharNumber="
				+ aadharNumber + ", phoneNumber=" + phoneNumber + ", address=" + address 
				+ ", registeredAt=" + registeredAt + "]";
	}

	
    
    
	
	
}
