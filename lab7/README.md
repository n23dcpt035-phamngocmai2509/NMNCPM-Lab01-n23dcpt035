# Lab 07 – Phát triển Module Rút tiền

## 🎯 Mục tiêu
- Viết module mô phỏng chức năng rút tiền trong ATM.
- Sử dụng Python + MySQL connector.
- Thực hiện verify PIN, kiểm tra số dư, cập nhật tài khoản, log transaction.

---

## 📂 File trong thư mục
- `withdraw_module.py` : code module rút tiền
- `test_withdraw.py` : script test chạy thử
- `test_success.png` : ảnh test rút tiền thành công
- `test_cases.png` : ảnh test lỗi (PIN sai, thiếu tiền)
- `README.md` : báo cáo lab

---

## 🖥️ Cách chạy
1. Tạo database `atm_demo` trong MySQL:
   ```sql
   CREATE DATABASE atm_demo;
   USE atm_demo;

   CREATE TABLE accounts (
     account_id INT AUTO_INCREMENT PRIMARY KEY,
     balance DOUBLE
   );

   CREATE TABLE cards (
     card_no VARCHAR(20) PRIMARY KEY,
     account_id INT,
     pin_hash VARCHAR(64),
     FOREIGN KEY (account_id) REFERENCES accounts(account_id)
   );

   CREATE TABLE transactions (
     tx_id INT AUTO_INCREMENT PRIMARY KEY,
     account_id INT,
     card_no VARCHAR(20),
     atm_id INT,
     tx_type VARCHAR(20),
     amount DOUBLE,
     balance_after DOUBLE,
     time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
   );

   INSERT INTO accounts(balance) VALUES(1000);
   INSERT INTO cards(card_no, account_id, pin_hash) 
   VALUES('1234567890', 1, SHA2('1234',256));
