## [2026-02-14] - Step 1: Skeleton Nhịp cầu (phần mặt cầu) + test OK

### Added
- Tạo package `+core/+nhipcau`.
- Thêm orchestrator `core.nhipcau.solve_deck(DS)`.
- Thêm 3 solver con (skeleton):
  - `core.nhipcau.solve_vanvet(DS)`.
  - `core.nhipcau.solve_bovia(DS)`.
  - `core.nhipcau.solve_vanlatngang(DS)`.
- Thêm `CauGoData.m` (default DS tối thiểu để test).
- Thêm `tests/test_deck_step1.m` để xác nhận pipeline chạy được.

### Fixed
- Chốt quy trình test chuẩn bằng MATLAB (restoredefaultpath + addpath(pwd)).
- Sửa lỗi MATLAB coi file solver là script (đảm bảo file bắt đầu bằng `function` + clear functions/rehash).

### Notes
- Hiện tại mới skeleton, chưa triển khai công thức thật cho ván vệt/bó vỉa/VLN.
- Bước tiếp theo: triển khai công thức + test Step 2.


## [2026-02-15] - Step 2.1: Ván vệt DONE (core + UI + test + export)

### Added
- Hoàn thiện solver thật cho ván vệt: `core.nhipcau.solve_vanvet(DS)`.
- Lưu kết quả + số liệu thô để export:
  - `DS.KetQua.NhipCau.VanVet.kt`.
  - `DS.KetQua.NhipCau.VanVet.d_vv_cm`, `b_vv_cm`, `h_vv_cm`, `is_tron`, `loai_go`.
- Thêm test tự động: `tests/test_vanvet_step2.m` (tự xác định project root từ vị trí file test).
- Tích hợp UI cho ván vệt: UI → DS → core → UI (hiển thị ra `EF_kt_vanvet`).
- Tạo pipeline export Excel cơ bản:
  - `+report/make_export_vanvet.m` (đóng gói dữ liệu export).
  - `+io/export_to_excel.m` (xuất .xlsx + format cơ bản).
- Nút xuất dữ liệu:
  - Xuất vào `C:\Users\ADM\CauGo_Project\+xuatdulieu`.
  - Tự đặt tên file: `DuLieuCauGo_YYYYMMDD_HHMMSS_LanNN.xlsx`.
  - Tự mở file Excel sau khi xuất.

### Fixed
- Fix lỗi MATLAB không nhận package khi chạy test bằng `run('tests/...')` bằng cơ chế auto-addpath theo vị trí file test.
- Fix lỗi `.mlapp` thiếu property `DS` (tạo/khởi tạo DS để không lỗi khi gọi core).
- Fix lỗi export bị sai đường dẫn do ghép `pwd` (IO nhận fullpath 100%).

### Notes
- Validation cho ván vệt tạm bỏ vì chỉ là tra nhanh theo H + loại gỗ.
- Tiếp theo: triển khai Step 2 cho bó vỉa và ván lát ngang + gom export “all kết cấu”.
