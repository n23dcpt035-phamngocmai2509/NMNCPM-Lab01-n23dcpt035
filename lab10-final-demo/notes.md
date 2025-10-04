# Lab 06 – Thiết kế chi tiết lớp & kiến trúc ATM

## 1. Class Diagram
- Gồm 4 lớp chính: ATM, Card, Account, Transaction.
- ATM quản lý Card và thực hiện Transaction.
- Account liên kết với Transaction để quản lý số dư.
- Card kết nối với Account để xác thực và giao dịch.

## 2. Package Diagram
- **UI:** giao diện người dùng (ATMUI).
- **Controller:** xử lý logic chính (ATMController).
- **BankService:** dịch vụ ngân hàng (AccountService, TransactionService).
- **Hardware:** phần cứng ATM (CardReader, CashDispenser, DepositSlot).

## 3. Kết quả
- File `class-atm.puml` và `class-atm.png`.
- File `package-diagram.puml` và `package-diagram.png`.
- File `notes.md` mô tả sơ đồ.
