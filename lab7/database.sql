-- Xóa database cũ nếu có
DROP DATABASE IF EXISTS atm_demo;

-- Tạo database mới
CREATE DATABASE atm_demo;
USE atm_demo;

-- Bảng tài khoản
CREATE TABLE accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    account_no VARCHAR(20) UNIQUE,
    balance DOUBLE NOT NULL DEFAULT 0
);

-- Bảng thẻ ATM (liên kết account)
CREATE TABLE cards (
    card_no VARCHAR(20) PRIMARY KEY,
    account_id INT,
    pin_hash VARCHAR(64) NOT NULL,
    status VARCHAR(20) DEFAULT 'ACTIVE',
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

-- Bảng giao dịch
CREATE TABLE transactions (
    tx_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT,
    card_no VARCHAR(20),
    tx_type VARCHAR(20),
    amount DOUBLE,
    balance_after DOUBLE,
    time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id),
    FOREIGN KEY (card_no) REFERENCES cards(card_no)
);

-- Insert dữ liệu mẫu
INSERT INTO accounts(account_no, balance) VALUES
('ACC1001', 5000),
('ACC1002', 3000);

-- Gắn thẻ ATM cho từng account
INSERT INTO cards(card_no, account_id, pin_hash)
VALUES
('1234567890', 1, SHA2('1234',256)),   -- thẻ 1, PIN = 1234
('9876543210', 2, SHA2('5678',256));   -- thẻ 2, PIN = 5678
