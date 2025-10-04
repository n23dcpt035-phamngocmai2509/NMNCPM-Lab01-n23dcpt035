# 💳 MINI PROJECT – ATM SYSTEM

**Môn học:** Nhập môn Công nghệ Phần mềm  
**Sinh viên:** PhạmPhạm Ngọc Mai  
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

```
/labs/lab10-final-demo/
│
├── lab02-usecase/          # Use Case Diagram
├── lab03-sequence/         # Sequence Diagram
├── lab04-login-form/       # Form đăng nhập
├── lab05-database/         # ERD + Script SQL
├── lab06-class-diagram/    # Class Diagram UML
├── lab07-withdraw-module/  # Module xử lý rút tiền
├── lab08-testing/          # Unit & Integration Test
├── lab09-jira-report/      # Báo cáo Jira Sprint
│
├── final-report.md         # Báo cáo tổng hợp
└── README.md               # File mô tả chính của Mini Project
```

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
![Use Case Diagram]

### 🟧 Sequence Diagram (Lab 03)
![Sequence Diagram]

### 🟨 Class Diagram (Lab 06)
![Class Diagram]
---

## 🗃 DATABASE DESIGN (Lab 05)

### 🧩 ERD – Entity Relationship Diagram
![ERD Diagram]

**Script tạo bảng:**

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
```

---

## 💻 GIAO DIỆN & CHỨC NĂNG CHÍNH

### 🔹 Form Login (Lab 04)
![Login Form]

### 🔹 Withdraw Module (Lab 07)

```python
def withdraw(account_id, amount):
    account = accounts.get(account_id)
    if not account:
        return False, "Account not found"
    if account["balance"] >= amount:
        account["balance"] -= amount
        return True, account["balance"]
    return False, "Insufficient funds"
```

---

## 🧪 KIỂM THỬ (Lab 08)

### Unit Test – `test_withdraw.py`
![Unit Test Result]
### Integration Test – `selenium_test_login.py`
![Selenium Test Result]

---

## 📋 QUẢN LÝ DỰ ÁN (Lab 09 – Jira)
![Jira Board]

---

## 🎥 DEMO CUỐI KỲ
![Demo Screenshot]

---

## 🧾 KẾT LUẬN & HƯỚNG PHÁT TRIỂN

### ✅ Kết quả đạt được:
- Tích hợp thành công toàn bộ module từ Lab 02 → 09.  
- Giao diện đơn giản, chạy ổn định.  
- Toàn bộ test pass 100%.  
- Quản lý công việc rõ ràng qua Jira.

### 🚀 Hướng mở rộng:
- Thêm chức năng **nạp tiền, chuyển khoản, tra cứu lịch sử giao dịch.**  
- Xây dựng **REST API + giao diện web hiện đại (React, Flask).**  
- Kết nối cơ sở dữ liệu thật (MySQL / PostgreSQL).  
- Thêm bảo mật (mã hóa PIN, xác thực 2 bước).

---

## 🔗 LINK REPO GITHUB
👉 [https://github.com/ngocmaiN23/NMNCPM-Lab10-ATM](https://github.com/n23dcpt035-phamngocmai2509/NMNCPM-Lab01-n23dcpt035/tree/main)

---

## 👏 THÔNG TIN SINH VIÊN
**Họ tên:** Phạm Ngọc Mai  
**MSSV:** N23DCPT035  
**Lớp:** D23CQPT01-N   

---

> 🧡 *“Mini Project ATM – Một sản phẩm nhỏ nhưng thể hiện đầy đủ quy trình phát triển phần mềm từ phân tích, thiết kế, lập trình, kiểm thử đến quản lý dự án.”*
