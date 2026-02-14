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
- Nhịp cầu: VLN + ván vệt + bó vỉa (mới skeleton, chưa công thức).

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

---

## 4) Quy tắc kỹ thuật đã chốt

- Package MATLAB dùng dấu `+`:
  - `+core/+nhipcau/...`.
- Khi test package: chỉ cần `addpath(pwd)` (không bắt buộc genpath).
- Khi MATLAB cache lỗi “not found” hoặc “script as function”:
  - dùng `clear functions` + `rehash toolboxcache`.

---

## 5) Bước tiếp theo (STEP 2)

- Triển khai công thức thật cho:
  - `solve_vanvet`.
  - `solve_bovia`.
  - `solve_vanlatngang` (tính full).
- Tạo test `tests/test_deck_step2.m` với 1 bộ số mẫu, ra đúng kết quả kỳ vọng.
- Sau khi Step 2 OK mới tính tiếp dầm cầu hoặc chuyển module khác.
