# PHẦN MỀM THIẾT KẾ CẦU GỖ

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