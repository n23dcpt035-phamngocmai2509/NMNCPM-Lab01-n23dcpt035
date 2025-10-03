# Lab 05 – Tích hợp, quản lý & báo cáo  

##  Mục tiêu
- Hoàn thiện quy trình phần mềm từ thiết kế đến triển khai.
- Gom tất cả các artifacts (Use Case, Sequence, Form Login code).
- Tạo Project Report (Markdown hoặc PDF).
- Push code, update README, tạo tag version `v1.0`.

---

## Artifacts

- **Use Case (Lab 02):**
    - [Usecase Diagram](lab2/usecase%20lab2.png)
    - [Usecase Description](lab2/usecase%20description.txt)

- **Sequence Diagram (Lab 03):**
    - [SQ Diagram](lab3/SQ%20lab3.png)
    - [SQ Description](lab3/description.txt)
    
- **UML Thiết kế Khác (Lab 03):**
    - [Usecase Diagram](lab3/usecase%20lab3.png)

- **Form Login Code (Lab 04):**
    - [Giao diện (index.html)](lab4/index.html)
    - [Script JS (script.js)](lab4/script.js)
    - [CSS (style.css)](lab4/style.css)

---

## Quy trình làm việc
1. Thiết kế Use Case và Use Case Description (Lab 02).
2. Vẽ Sequence Diagram (Lab 03).
3. Xây dựng Form Login bằng HTML/CSS/JS (Lab 04).
4. Tích hợp tất cả vào repo GitHub (Lab 05).
5. Viết báo cáo và quản lý version.

---

## Hướng dẫn push code & quản lý version
```bash
# Clone repo về máy
git clone <link-repo>

# Thêm thay đổi
git add .
git commit -m "Update Lab05 report and artifacts"
git push origin main

# Tạo tag version 1.0
git tag v1.0
git push origin v1.0
