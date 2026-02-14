# PROJECT_CONTEXT

## 1) Thông tin dự án

- Tên: CauGo_Project.
- Giai đoạn: Rebuild 2026.
- Mục tiêu: dùng lại GUI, tách logic vào `+core`, làm theo từng bước nhỏ (done mới tiếp tục).

---

## 2) Module chính

- Nhịp cầu.
- Chân cầu.
- Mố cầu.

Trong Nhịp cầu gồm:
- Ván lát ngang (VLN).
- Ván vệt.
- Bó vỉa.
- Dầm cầu (để sau).

Hôm nay đã làm đến:
- Nhịp cầu: ván vệt DONE (core + UI + test + export).
- Bó vỉa + VLN: vẫn đang skeleton, chưa công thức.


---

## 3) Tiến độ hiện tại (đã xác nhận chạy OK)

- Đã tạo `+core/+nhipcau` và các file:
  - `solve_deck.m`.
  - `solve_vanvet.m`.
  - `solve_bovia.m`.
  - `solve_vanlatngang.m`.
- Đã có test `tests/test_deck_step1.m` và chạy OK.
- Đã chốt chuẩn lưu kết quả:
  - `DS.KetQua.NhipCau.VanVet.kt`.
  - `DS.KetQua.NhipCau.BoVia.kt`, `DS.KetQua.NhipCau.BoVia.lbv_cm`.
  - `DS.KetQua.NhipCau.VLN.lvln_cm`, `DS.KetQua.NhipCau.VLN.kt`.
- STEP 2.1 (Ván vệt) đã DONE:
  - `core.nhipcau.solve_vanvet(DS)` triển khai logic thật theo H và loại gỗ.
  - Lưu thêm số liệu thô để xuất dữ liệu (d/b/h, is_tron, loai_go).
  - Test: `tests/test_vanvet_step2.m` chạy OK.
  - UI: đã gắn nút tính để hiển thị `EF_kt_vanvet`.
  - Export: đã có `+report/make_export_vanvet.m` + `+io/export_to_excel.m`.
  - Xuất file vào `C:\Users\ADM\CauGo_Project\+xuatdulieu` và tự mở Excel.


---

## 4) Quy tắc kỹ thuật đã chốt

- Package MATLAB dùng dấu `+`:
  - `+core/+nhipcau/...`.
- Khi test package: chỉ cần `addpath(pwd)` (không bắt buộc genpath).
- Khi MATLAB cache lỗi “not found” hoặc “script as function”:
  - dùng `clear functions` + `rehash toolboxcache`.

---

## 5) Bước tiếp theo (STEP 2)

- STEP 2.2: triển khai công thức thật cho:
  - `solve_bovia`.
  - `solve_vanlatngang` (tính full).
- Tạo test:
  - `tests/test_deck_step2.m` (deck gồm ván vệt + bó vỉa + VLN).
- Chuẩn hoá export “all kết cấu”:
  - `report.make_export_all(DS)` gom Nhịp cầu/Chân cầu/Mố cầu.
  - Nút xuất dữ liệu xuất 1 file Excel duy nhất theo timestamp + lần xuất.
