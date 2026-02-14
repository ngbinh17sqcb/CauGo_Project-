# CauGo_Project — Rebuild 2026

Mục tiêu: làm lại phần mềm theo kiến trúc sạch, dễ bảo trì, dùng lại GUI hiện có, đưa logic vào package `+core`.

---

## 1) Trạng thái hiện tại

- Đã tạo kiến trúc package: `+core/+nhipcau`.
- Đã có 3 solver con (skeleton) cho Nhịp cầu phần mặt cầu:
  - `core.nhipcau.solve_vanvet(DS)`.
  - `core.nhipcau.solve_bovia(DS)`.
  - `core.nhipcau.solve_vanlatngang(DS)`.
- Đã có orchestrator:
  - `core.nhipcau.solve_deck(DS)` gọi lần lượt 3 solver con.
- Đã test STEP 1 chạy OK bằng `tests/test_deck_step1.m`.
- Hiện tại mới là skeleton, chưa nhét công thức thật.

- STEP 2.1: Ván vệt đã DONE:
  - Core: `core.nhipcau.solve_vanvet(DS)` + lưu số liệu thô.
  - Test: `tests/test_vanvet_step2.m` chạy OK.
  - UI: hiển thị kết quả ra `EF_kt_vanvet`.
  - Export: `+report/make_export_vanvet.m` + `+io/export_to_excel.m`.
  - Xuất Excel vào `C:\Users\ADM\CauGo_Project\+xuatdulieu` và tự mở file sau khi xuất.

---

## 2) Kiến trúc thư mục
```
CauGo_Project/
├── +core/
│ └── +nhipcau/
│ ├── solve_deck.m
│ ├── solve_vanvet.m
│ ├── solve_bovia.m
│ └── solve_vanlatngang.m
├── tests/
│ └── test_deck_step1.m
├── +io/
│ └── export_to_excel.m
├── +report/
│ └── make_export_vanvet.m
├── +xuatdulieu/
│ └── (các file DuLieuCauGo_*.xlsx)
├── CauGo_AI.mlapp
├── CauGoData.m
├── README.md
├── CHANGELOG.md
└── PROJECT_CONTEXT.md
```

---

## 3) Quy ước dữ liệu (DS)
- Danh sách Component Name của app: `COMPONENT_NAMES.md`.
- DS là struct trung tâm.
- Kết quả phần mặt cầu thuộc Nhịp cầu lưu vào:
  - `DS.KetQua.NhipCau.VanVet.kt`.
  - `DS.KetQua.NhipCau.BoVia.kt`.
  - `DS.KetQua.NhipCau.BoVia.lbv_cm`.
  - `DS.KetQua.NhipCau.VLN.lvln_cm`.
  - `DS.KetQua.NhipCau.VLN.kt`.
- Chưa triển khai công thức thật ở các solver (đang skeleton).

---

## 4) Cách test chuẩn (đã chốt)

Chạy trong MATLAB Command Window:

```matlab
restoredefaultpath; rehash toolboxcache
cd 'C:\Users\ADM\CauGo_Project'
addpath(pwd); rehash

which CauGoData
which core.nhipcau.solve_deck

run('tests/test_deck_step1.m')
Nếu gặp lỗi “script as a function”, xử lý nhanh:

clear functions
rehash toolboxcache
run('tests/test_deck_step1.m')
```
## 4.1) Test ván vệt (STEP 2.1)

```matlab
restoredefaultpath; rehash toolboxcache
cd 'C:\Users\ADM\CauGo_Project'
addpath(genpath(pwd)); rehash

run('tests/test_vanvet_step2.m')
```
## 5) Kế hoạch bước tiếp theo
STEP 2: nhét công thức thật cho 3 solver:

ván vệt.

bó vỉa.

ván lát ngang (tính full: sigma/tau, m, c’, a, Mmax, W, hvln, kt_vln, lvln).

STEP 2 có test riêng: tests/test_deck_step2.m.


---
