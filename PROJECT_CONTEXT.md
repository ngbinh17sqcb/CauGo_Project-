# PROJECT CONTEXT - CẦU GỖ

> Cập nhật: 03/02/2026        


## Thông tin dự án

- **Tên:** Phần mềm thiết kế cầu gỗ
- **Mục tiêu:** Viết lại logic, giữ UI cũ
- **Thời gian:** 14-21 ngày
- **Công nghệ:** MATLAB App Designer

## Cấu trúc
```
/CauGo_Project/
├── CauGo_AI.mlapp              # UI cũ (KHÔNG SỬA)
├── +Data/                      # Data structure
├── +TinhToan/                  # Logic tính toán
├── +Utils/                     # Utilities
└── tests/                      # Tests
```

## Workflow
```
UI cũ (.mlapp) ←→ Logic mới (+packages)
```

## Tiến độ

**Ngày hiện tại:** 04/02/2025  
**Tuần:** 1/3  
**Task hiện tại:** Ngày 2 

**Đã hoàn thành:**
- [x] Folders + Git + Docs

**Tiếp theo:**
- [ ] Ngày 2: CauGoData.m

## Quy ước

### Commit
```
feat:  tính năng mới
fix:   sửa lỗi
test:  test
docs:  tài liệu
chore: setup/config
```

### Naming
- Files: PascalCase (DamCau.m)
- Functions: camelCase (tinhDamCau)
- Variables: snake_case (chieu_dai)

## Làm việc với AI

**Mỗi ngày:**
```
1. Upload: PROJECT_CONTEXT.md + CHANGELOG.md
2. Nói: "Em làm dự án cầu gỗ, hôm nay làm [task X]"
```

## Lưu ý

- KHÔNG sửa .mlapp trực tiếp
- Test trước khi commit
- Commit nhỏ, thường xuyên
- Cập nhật CHANGELOG mỗi ngày