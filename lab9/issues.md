# Issues for "ATM System" project

## Epic
- ATM Basic Functions
  - Summary: Core ATM features for customers and technicians.

## User Stories

### US1 — Rút tiền (5 SP)
Description: Là khách hàng, tôi muốn rút tiền để lấy tiền mặt từ ATM.  
Acceptance Criteria:
- Nhập số tiền hợp lệ.
- Nhập và xác thực PIN.
- Máy trả tiền nếu số dư đủ.
- Hiển thị thông báo lỗi khi PIN sai hoặc thiếu số dư.

Tasks:
- [ ] Thiết kế UI rút tiền (1 SP)
  - Mockup màn hình
- [ ] Viết API rút tiền (3 SP)
  - Xác thực PIN
  - Kiểm tra số dư & cập nhật DB
- [ ] Test (1 SP)
  - Unit tests
  - E2E test

### US2 — Xem số dư (3 SP)
Description: Là khách hàng, tôi muốn kiểm tra số dư tài khoản.
Acceptance Criteria:
- Xác thực PIN.
- Hiển thị số dư hiện tại chính xác.

Tasks:
- [ ] UI hiển thị số dư (0.5 SP)
- [ ] API lấy số dư (1.5 SP)
- [ ] Test (1 SP)

### US3 — Chuyển khoản (8 SP)
Description: Là khách hàng, tôi muốn chuyển khoản tới tài khoản khác.
Acceptance Criteria:
- Nhập tài khoản đích & số tiền.
- Xác nhận giao dịch.
- Cập nhật số dư hai bên.

Suggested Tasks:
- UI chuyển khoản, API chuyển khoản, validation, tests.

### US4 — Bảo trì (2 SP)
Description: Là kỹ thuật viên, tôi muốn đặt chế độ bảo trì và kiểm tra hệ thống.
Acceptance Criteria:
- Có chế độ bảo trì (on/off).
- Ghi log, kiểm tra lại dịch vụ.

Tasks:
- Thiết lập maintenance mode, health checks, tests.

<!-- Ready to push to GitHub -->
