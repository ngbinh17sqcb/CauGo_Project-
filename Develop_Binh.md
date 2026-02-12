# LỘ TRÌNH HỌC KIẾN THỨC BỔ SUNG - DỰ ÁN CẦU GỖ

> **Dành cho:** Người mới học code, đang "vibe code"  
> **Mục tiêu:** Học đủ để hoàn thành dự án, không học thừa  
> **Phương pháp:** Học–Làm–Học–Làm (không học trước hết)

---

## 🧭 CẬP NHẬT TRẠNG THÁI (mới nhất: 13/02/2026)

### ✅ Đã xong (đang dùng được cho dự án)
- [x] Variables & Data Types (số, chuỗi, logic, mảng).  
- [x] Quy ước đặt tên `snake_case` + gắn đơn vị (khuyến nghị đặt đơn vị ngay trong tên biến, ví dụ `chieu_dai_m`).  
- [x] Struct (struct rỗng, field, struct lồng nhau, `isfield`).  
- [x] Pattern dữ liệu chuẩn: **UI → DS (struct) → Validate → Tính → DS.KetQua → UI**.  
- [x] Validation cơ bản (`if`, chặn chia 0/đầu vào sai).  
- [x] Tách logic ra file `.m` (pure function). Ví dụ: `calc_khoang_cach_dam.m`.  
- [x] Hiểu `error()` (core) vs `uialert()` (UI).  
- [x] Hiểu dấu `...` để xuống dòng cho dễ đọc (không bắt buộc khi dòng ngắn).  

### ⏭️ Next (ưu tiên làm tiếp)
- [ ] `try – catch` trong App để **bắt lỗi không làm app crash**.  
- [ ] Chuẩn hoá thư mục: `+TinhToan`, `+Utils` (đúng kiểu dự án).  
- [ ] Viết thêm 3–5 hàm tính lõi (rồi mới nghĩ tới unit test).  

### ⏸️ Tạm hoãn (chưa cần gấp)
- [ ] Classes & Objects (OOP): chỉ học khi bạn **thực sự cần** đóng gói dữ liệu/logic phức tạp; chưa vội.  

---

## 🎯 NGUYÊN TẮC HỌC

### ✅ LÀM
- Học theo TASK (cần gì học nấy).  
- Mỗi mảng kiến thức 15–30 phút.  
- Học xong phải chạy được 1 ví dụ tối thiểu.  
- Gặp lỗi → đọc error message → sửa → ghi lại “nguyên nhân – cách fix”.  

### ❌ TRÁNH
- Học hết rồi mới làm.  
- Học quá sâu (OOP nâng cao, tối ưu hiệu năng sớm).  
- Nhảy sang ngôn ngữ khác khi chưa xong MATLAB.  
- Xem tutorial dài 2–3 tiếng liên tục.  

---

## 📚 KIẾN THỨC 1: MATLAB NỀN TẢNG (đã triển khai trong dự án)

### 1.1. Variables & Data Types (DONE)
**Học gì:**
```matlab
% Số
a = 10;           % integer (thực tế MATLAB thường là double)
b = 3.14;         % float
c = 5e3;          % scientific notation

% Chuỗi (khuyến nghị dùng string)
ten = "Cầu Gỗ";

% Logic
isValid = true;
isError = false;

% Array
arr = [1, 2, 3, 4, 5];
matrix = [1 2; 3 4];
```

**Lưu ý cho dự án (chuẩn hoá):**
- Dùng `snake_case`.  
- Gắn đơn vị trong tên biến (khuyến nghị): `chieu_dai_m`, `tai_trong_T`, `sigma_allow_kgcm2`.  
- Chỉ comment đơn vị khi cần giải thích thêm.  

---

### 1.2. Structs (DONE)
**Học gì:**
```matlab
cau = struct();
cau.chieu_dai_m = 10;
cau.chieu_rong_m = 2;

cau.vat_lieu.loai = "Thong";
cau.vat_lieu.mat_do_kgm3 = 500;

L = cau.chieu_dai_m;

if isfield(cau, "chieu_dai_m")
    disp("Có chiều dài");
end
```

**Bài tập (đã làm/đang làm):**
- Dùng `DS` làm DataStore cho toàn app:
```matlab
DS.ThongSo.chieu_dai_m = 12;
DS.ThongSo.so_dam_n = 8;
```

---

### 1.3. Validation (DONE – bắt buộc cho app nghiêm túc)
**Mục tiêu:** nhập sai thì **báo lỗi rõ**, không crash, không tính tiếp.

**Core (file .m):**
```matlab
if so_dam_n <= 1
    error("So dam phai lon hon 1.");
end
```

**UI (App Designer):**
```matlab
uialert(app.UIFigure, "So dam phai lon hon 1", "Loi du lieu");
return
```

---

### 1.4. Functions (DONE – đang áp dụng)
**Mục tiêu:** tách logic tính khỏi UI/DS, dễ test, dễ tái sử dụng.

**Ví dụ file:** `calc_khoang_cach_dam.m`
```matlab
function khoang_cach_dam_m = calc_khoang_cach_dam(chieu_dai_m, so_dam_n)
    if so_dam_n <= 1
        error("So dam phai lon hon 1.");
    end
    khoang_cach_dam_m = chieu_dai_m / (so_dam_n - 1);
end
```

**Gọi (có thể 1 dòng hoặc xuống dòng bằng `...`):**
```matlab
DS.KetQua.khoang_cach_dam_m = ...
    calc_khoang_cach_dam(DS.ThongSo.chieu_dai_m, DS.ThongSo.so_dam_n);
```

---

### 1.5. Packages (NEXT – làm sớm để project sạch)
**Mục tiêu:** chuẩn hoá dự án theo module.

**Cấu trúc khuyến nghị:**
```
/CauGo_Project/
  +TinhToan/
    calc_khoang_cach_dam.m
    calc_Mmax.m
  +Utils/
    validate_positive_int.m
    validate_range.m
```

**Gọi hàm trong package:**
```matlab
a = TinhToan.calc_khoang_cach_dam(12, 8);
```

---

## 📚 KIẾN THỨC 2: APP DESIGNER (đi theo đúng pattern)

### 2.1. Callbacks Cơ Bản (đang chuẩn bị/áp dụng)
**Nguyên tắc vàng:** callback ngắn, chỉ làm 3 việc:
1) UI → DS.  
2) Gọi core tính toán.  
3) DS.KetQua → UI.  

---

### 2.2. Truyền Dữ Liệu UI ↔ Logic (đang áp dụng)
**Pattern chuẩn:**
```
UI Input → DS.ThongSo → Validate → Core Calc → DS.KetQua → UI Output
```

**Bước tiếp theo bắt buộc (NEXT):** `try – catch`
```matlab
try
    DS.KetQua.khoang_cach_dam_m = ...
        TinhToan.calc_khoang_cach_dam(DS.ThongSo.chieu_dai_m, DS.ThongSo.so_dam_n);
catch ME
    uialert(app.UIFigure, ME.message, "Loi du lieu");
    return
end
```

---

## 📚 KIẾN THỨC 3: TESTING & DEBUGGING

### 3.1. Debug Cơ Bản (đang dùng hằng ngày)
- `disp`, `fprintf`.  
- Breakpoint.  
- Step (F10/F11).  
- Workspace.  

### 3.2. Unit Tests Đơn Giản (LÀM SAU khi có 5–7 hàm core)
Chỉ bắt đầu test khi core đã có “khối lượng”.

---

## 📚 KIẾN THỨC 4: GIT (giữ nguyên, dùng khi cần)

- Branching.  
- Stash.  

---

## 🎓 LỘ TRÌNH THEO TUẦN (đã chỉnh theo thực tế bạn đang làm)

### TUẦN 1: Nền tảng + Core (DONE phần lớn)
- Variables + Struct.  
- DS pattern (UI → DS → Validate → Calc → UI).  
- Validation.  
- Tách function core ra file `.m`.  

### TUẦN 2: Chuẩn hoá project + Bắt lỗi (NEXT)
- Packages: `+TinhToan`, `+Utils`.  
- `try – catch` trong App.  
- Viết thêm 3–5 hàm core theo module (mỗi hàm có validate).  

### TUẦN 3: Kết nối UI hoàn chỉnh + Test nhẹ
- Hoàn thiện callbacks theo pattern.  
- Thêm log/debug có kiểm soát.  
- Unit test cơ bản cho các hàm core.  

---

## ✅ CHECKLIST TỐI THIỂU (update)

### Trước khi làm UI nặng
- [x] Struct + DS.  
- [x] Function core.  
- [x] Validation.  
- [ ] Package hoá module.  
- [ ] `try – catch` chuẩn trong callback.  

### Trước khi “chốt” app để nộp
- [ ] Có tối thiểu 5–7 hàm core độc lập.  
- [ ] UI chỉ là vỏ, core chạy được khi gọi trực tiếp từ Command Window.  
- [ ] Có 3–5 case test cơ bản (đúng + sai).  

---

## 🚫 SAI LẦM THƯỜNG GẶP (nhắc lại, vì rất dễ dính)
- Copy code không hiểu → chạy được nhưng không sửa được.  
- Dồn mọi thứ vào callback.  
- Không validate dữ liệu đầu vào.  
- Refactor quá sớm khi chưa chạy được end-to-end.  

---

## 🎯 MỤC TIÊU CUỐI
- Core tính toán chạy đúng, tách rời UI.  
- UI gọi core an toàn (try–catch + uialert).  
- Project sạch, dễ mở rộng, dễ debug.  
