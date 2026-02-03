# PHẦN MỀM THIẾT KẾ CẦU GỖ
## -- ================== WORKFLOW REMINDER ==================

🧠 NÃO CÁ VÀNG – ĐỌC LẠI TRƯỚC KHI LÀM VIỆC 🧠

1. README.md
   - Dùng để giới thiệu dự án.
   - Trả lời: Dự án này là gì? Cấu trúc ra sao? Dùng thế nào?
   - KHÔNG ghi nhật ký từng ngày.

2. CHANGELOG.md
   - Dùng để ghi lại những gì ĐÃ LÀM theo thời gian.
   - Mỗi TASK xong → thêm 1–2 dòng.
   - Ghi ngắn gọn, theo ngày/tuần.

3. PROJECT_CONTEXT.md
   - NÃO CỦA DỰ ÁN.
   - Ghi: mục tiêu, logic chính, quy ước, quyết định quan trọng.
   - Dùng khi quay lại sau vài ngày hoặc nhờ AI hỗ trợ.

--------------------------------------------

📌 NGUYÊN TẮC COMMIT (NHỚ KỸ):
- Commit theo TASK HOÀN CHỈNH.
- KHÔNG commit theo giờ, KHÔNG commit nửa chừng.
- 1 ngày commit nhiều lần = OK, miễn là xong việc.

📌 QUY TRÌNH CHUẨN:
- Làm xong 1 task
- Cập nhật CHANGELOG.md
- Commit

📌 COMMIT MESSAGE MẪU:
- feat: thêm chức năng mới
- fix: sửa lỗi
- docs: cập nhật tài liệu
- chore: việc linh tinh (config, folder, extension)

======================================================== -->


> Dự án viết lại logic tính toán, giữ nguyên UI

## Cấu trúc dự án
```
/CauGo_Project/
├── CauGo_AI.mlapp              # UI cũ (KHÔNG SỬA)
├── +Data/                      # Cấu trúc dữ liệu
├── +TinhToan/                  # Logic tính toán
├── +Utils/                     # Tiện ích
├── tests/                      # Unit tests
├── README.md
├── CHANGELOG.md
└── PROJECT_CONTEXT.md
```
## Extension đã cài
```
- GitLens
- Git Graph
- Todo Tree
- Project Manager
- Path Intellisense
- Error Lens
- MATLAB
- Material Icon Theme
```
## Workflow
```
UI cũ (.mlapp) ←→ Logic mới (+packages)
```

## Cách chạy
```matlab
% Mở MATLAB
CauGo_AI  % Chạy app
```

## Cách test
```matlab
runtests('tests')
```

## Quy ước

- **Commit:** feat/fix/test/docs/chore
- **Naming:** PascalCase cho files, camelCase cho functions
- **Test:** Test trước khi commit

## Lộ trình

14-21 ngày, mỗi ngày 1-2 giờ

## Liên hệ

- **Tác giả:** [Nguyễn Thanh Bình]
- **Email:** [ngbinh17sqcb@gmail.com]