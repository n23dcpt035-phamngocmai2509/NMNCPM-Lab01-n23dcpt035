# 💳 MINI PROJECT – ATM SYSTEM

**Môn học:** Nhập môn Công nghệ Phần mềm  
**Sinh viên:** Nguyễn Ngọc Mai  
**MSSV:** N23DCPT035  
**Lớp:** D23CQPT01-N  
**Lab 10 – Báo cáo tổng hợp & Demo cuối kỳ**

---

## 🎯 MỤC TIÊU
Tổng hợp toàn bộ các bài Lab từ 01 → 09 để tạo thành **Mini Project ATM** mô phỏng hoạt động của một máy rút tiền tự động.

**Chức năng chính:**
- Đăng nhập người dùng qua form login.
- Kiểm tra và xác thực mã PIN.
- Rút tiền (Withdraw) khi số dư đủ.
- Quản lý dữ liệu qua cơ sở dữ liệu.
- Kiểm thử hệ thống bằng Unit Test và Selenium Integration Test.
- Quản lý tiến độ dự án bằng Jira.

---

## 🧩 CẤU TRÚC THƯ MỤC
/labs/lab10-final-demo/
│
├── lab02-usecase/ # Use Case Diagram
├── lab03-sequence/ # Sequence Diagram
├── lab04-login-form/ # Form đăng nhập
├── lab05-database/ # ERD + Script SQL
├── lab06-class-diagram/ # Class Diagram UML
├── lab07-withdraw-module/ # Module xử lý rút tiền
├── lab08-testing/ # Unit & Integration Test
├── lab09-jira-report/ # Báo cáo Jira Sprint
│
├── final-report.md # Báo cáo tổng hợp
└── README.md # File mô tả chính của Mini Project

---

## 🧠 GIỚI THIỆU HỆ THỐNG ATM

ATM mini project mô phỏng hoạt động cơ bản của một máy rút tiền tự động, gồm:

1. **Đăng nhập tài khoản** bằng Account ID và PIN.  
2. **Xác thực người dùng** bằng dữ liệu trong Database.  
3. **Rút tiền** nếu tài khoản đủ tiền.  
4. **Cập nhật số dư** sau mỗi giao dịch.  
5. **Kiểm thử & quản lý phát triển** bằng công cụ hiện đại.

---

## 🧱 UML MODELS

### 🟦 Use Case Diagram (Lab 02)
Mô tả các tác nhân và chức năng chính:

- **User:** Đăng nhập, xem số dư, rút tiền.  
- **System:** Xác thực PIN, xử lý giao dịch, cập nhật số dư.

![Use Case Diagram](../lab02-usecase/usecase_atm.png)

---

### 🟧 Sequence Diagram (Lab 03)
Luồng tương tác khi **người dùng đăng nhập và rút tiền**:

![Sequence Diagram](../lab03-sequence/sequence_atm.png)

---

### 🟨 Class Diagram (Lab 06)
Cấu trúc hướng đối tượng của hệ thống ATM:

![Class Diagram](../lab06-class-diagram/class_atm.png)

---

## 🗃 DATABASE DESIGN (Lab 05)

### 🧩 ERD – Entity Relationship Diagram

Mô hình dữ liệu của hệ thống:
Account(account_id, pin, balance)
Transaction(transaction_id, account_id, amount, type, date)

![ERD Diagram](../lab05-database/erd_atm.png)

### 🗄 Script tạo bảng

```sql
CREATE TABLE Account (
    account_id VARCHAR(10) PRIMARY KEY,
    pin VARCHAR(10) NOT NULL,
    balance DECIMAL(10,2) NOT NULL
);

CREATE TABLE Transaction (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id VARCHAR(10),
    amount DECIMAL(10,2),
    type VARCHAR(10),
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id) REFERENCES Account(account_id)
);





