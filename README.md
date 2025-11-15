# Smart Bank Management System

A modern online banking platform designed to eliminate the inefficiencies of traditional banking. This system allows customers to manage their accounts, perform transactions, and apply for loans—all without visiting the bank.

---

## 🚀 Features

### 👤 **Customer Functionalities**

* **User Registration & Login** – Secure authentication with email OTP verification.
* **Account Dashboard** – View balance, recent transactions, and loan status.
* **Fund Transfer** – Transfer money using account number.
* **Mini Statement** – View last **5** transactions.
* **Loan Application** – Apply for loans and track approval status.

### 👨‍💼 **Admin Functionalities**

* **Approve Loan Requests** – Review and approve/reject user loan requests.
* **Manage Customers** – View and manage all user accounts.
* **Generate Reports** – Monthly and annual transaction reports.

---

## 🛠 Tech Stack

* **Backend:** Spring MVC, Spring ORM (JPA)
* **Frontend:** JSP, HTML, CSS
* **Database:** MySQL
* **Server:** Apache Tomcat
* **IDE:** Eclipse
* **Build Tool:** Maven

---

## 📦 Project Structure (Maven + Dynamic Web)

```
SmartBankManagementSystem/
│── src/
│   ├── main/java/
│   │    ├── com.config/        (Database & App Configuration Classes)
│   │    └── com.*              (Controllers, Services, DAO, etc.)
│   ├── main/resources/         (Usually empty in my project)
│   └── main/webapp/            (JSPs)
│── pom.xml
│── README.md
---

## ▶️ How to Run the Project

### **1. Clone the Repository**

* git clone <repo_url>

### **2. Import into Eclipse**

* Go to **File → Import → Maven → Existing Maven Project**.
* Select the project folder.

### **3. Configure Tomcat**

* Go to **Servers** tab → Add **Tomcat Server**.
* Add the project to the server.

### **4. Database Setup

* Create a MySQL database.
* Update database credentials inside **Java config class** located at:
src/main/java/com.config/

Update values like:

* JDBC URL
* Username
* Password
* Hibernate/JPA properties

### **5. Run the Project**

* Right-click the project → **Run on Server**.

---

## ✨ Author

**Kamuni Karthik**

---
