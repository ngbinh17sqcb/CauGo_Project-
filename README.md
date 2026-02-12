# CauGo_Project (2026 Rebuild)

Phần mềm tính toán Cầu gỗ phục vụ học tập, nghiên cứu và phát triển theo hướng chuẩn hoá, tách biệt UI và lõi tính toán.

---

## 1. Mục tiêu phiên bản 2026

- Làm lại phần mềm từ đầu.
- Giữ lại giao diện (UI) của phiên bản cũ.
- Viết lại toàn bộ lõi tính toán theo kiến trúc rõ ràng.
- Tách UI và Logic để dễ bảo trì, test và mở rộng.
- Làm việc chuẩn Git + VS Code + MATLAB.

---

## 2. Kiến trúc dự án

CauGo_Project/
│```
├── app/ % Chứa file .mlapp (UI)
├── core/ % Lõi tính toán
├── data/ % Cấu trúc dữ liệu (DS, validate, mapping)
├── ui/ % Hàm trung gian giữa UI và core
├── tests/ % Script test không cần mở UI
│
├── run_app.m % Entry point
├── README.md
├── CHANGELOG.md
└── PROJECT_CONTEXT.md
```

---

## 3. Nguyên tắc phát triển

- Không viết logic trong UI.
- UI chỉ làm nhiệm vụ hiển thị và nhận input.
- Mọi tính toán phải nằm trong `core/`.
- Mỗi bước hoàn thành xong mới chuyển bước tiếp theo.
- Mỗi task phải có commit riêng.

---

## 4. Workflow chuẩn

1. Sửa code
2. Test chạy được
3. Cập nhật CHANGELOG
4. Commit
5. Push

---

## 5. Trạng thái hiện tại

Đang trong giai đoạn Rebuild 2026:
- Chưa có lõi tính toán.
- Chuẩn bị thiết kế lại cấu trúc dữ liệu.