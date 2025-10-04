# Lab 09 — Quản lý dự án ATM trên Jira (Agile)

Nhóm: [Tên nhóm]  
Thành viên: [Tên 1], [Tên 2], ...  
Sprint: Sprint 1 (2 tuần) — [YYYY-MM-DD] → [YYYY-MM-DD]

## Mục tiêu Sprint
Hoàn thành MVP: Rút tiền (US1) và Xem số dư (US2).

## Backlog (tóm tắt)
- Epic: ATM Basic Functions
- US1: Là khách hàng, tôi muốn rút tiền. (5 SP)  
  Acceptance Criteria:
  - Nhập số tiền hợp lệ.
  - Nhập và xác thực PIN.
  - Máy trả tiền nếu số dư đủ.
  - Hiển thị thông báo lỗi khi PIN sai hoặc thiếu số dư.
- US2: Là khách hàng, tôi muốn kiểm tra số dư. (3 SP)  
  Acceptance Criteria:
  - Xác thực PIN.
  - Hiển thị số dư hiện tại chính xác.
- US3: Là khách hàng, tôi muốn chuyển khoản. (8 SP)
- US4: Là kỹ thuật viên, tôi muốn bảo trì. (2 SP)

## Phân rã (ví dụ)
US1 (Rút tiền)
- Task: Thiết kế UI rút tiền (1 SP)
  - Subtask: Mockup màn hình
- Task: Viết API rút tiền (3 SP)
  - Subtask: Xác thực PIN
  - Subtask: Kiểm tra & cập nhật số dư DB
- Task: Test (1 SP)
  - Subtask: Unit test, E2E

US2 (Xem số dư)
- Task: UI hiển thị (0.5 SP)
- Task: API lấy số dư (1.5 SP)
- Task: Test (1 SP)

## Sprint Plan
- Tên: Sprint 1 — Cash withdraw + Balance check  
- Thời lượng: 2 tuần  
- Sprint Goal: Deployable implementation of US1 & US2.  
- Assignees (ví dụ): Dev A — API; Dev B — UI; QA — tests  
- Definition of Done: code reviewed, merged, tests pass, deployed to staging.

## Evidence (thêm ảnh vào thư mục `images/`)
Đặt ảnh chụp màn hình vào `lab9/images/`:
- backlog.png — Backlog: Epic + User Stories + Tasks.
- board.png — Sprint Board: To Do / In Progress / Done.
- burndown.png — Burndown chart Sprint 1.
- issue_detail.png — Chi tiết issue (AC, subtasks, assignee).

Chèn ảnh ví dụ:
- ![Backlog](images/backlog.png) — Backlog: Epic + US + tasks.
- ![Board](images/board.png) — Sprint board.
- ![Burndown](images/burndown.png) — Burndown chart.

## Sprint Result
- Planned: 8 SP (US1 + US2)  
- Completed: [số SP hoàn thành]  
- Impediments / Notes: [ghi ngắn các blockers, action items]

## Rubric mapping
- Backlog đầy đủ (3đ): Epic + 4 US + tasks/subtasks.
- Sprint board (3đ): Sprint 1 có US1+US2, tasks assigned.
- Báo cáo sprint (2đ): Sprint goal, duration, assignment, kết quả.
- Evidence (2đ): 3+ ảnh (backlog, board, burndown).

## Hướng dẫn nộp
1. Thêm ảnh thực tế vào `lab9/images/`.  
2. Điền thông tin nhóm, ngày, completed SP.  
3. Nộp `report.md` hoặc xuất thành PDF.

