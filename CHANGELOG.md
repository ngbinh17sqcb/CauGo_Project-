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