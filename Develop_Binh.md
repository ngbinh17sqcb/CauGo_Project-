# LỘ TRÌNH HỌC KIẾN THỨC BỔ SUNG - DỰ ÁN CẦU GỖ

> **Dành cho:** Người mới học code, đang "vibe code"  
> **Mục tiêu:** Học đủ để hoàn thành dự án, không học thừa  
> **Phương pháp:** Học-Làm-Học-Làm (không học trước hết)

---

## 🎯 NGUYÊN TẮC HỌC

### ✅ LÀM
- Học theo TASK (cần gì học nấy)
- Học 15-30 phút/kiến thức
- Làm ngay sau khi học
- Gặp lỗi → Google/ChatGPT → học thêm

### ❌ TRÁNH
- Học hết rồi mới làm
- Học quá sâu (ví dụ: OOP nâng cao)
- Học ngôn ngữ khác (Python, C++...)
- Xem tutorial dài 2-3 tiếng

---

## 📚 KIẾN THỨC 1: MATLAB CƠ BẢN

### 1.1. Variables & Data Types (15 phút)
**Khi nào cần:** Ngày 2-3

**Học gì:**
```matlab
% Số
a = 10;           % integer
b = 3.14;         % float
c = 5e3;          % scientific notation

% Chuỗi
ten = 'Cầu Gỗ';
ten2 = "Cầu Gỗ"; % string (MATLAB mới)

% Logic
isValid = true;
isError = false;

% Array
arr = [1, 2, 3, 4, 5];
matrix = [1 2; 3 4];
```

**Tài liệu:**
- MATLAB Docs: "Numeric Types"
- YouTube: "MATLAB Basics" (10 phút đầu)

**Lưu ý cho dự án:**
- Dùng `snake_case` cho biến: `chieu_dai`, `mat_do`
- Comment đơn vị: `chieu_dai % m`

---

### 1.2. Structs (20 phút)
**Khi nào cần:** Ngày 2 (tạo CauGoData)

**Học gì:**
```matlab
% Tạo struct rỗng
cau = struct();

% Thêm field
cau.chieu_dai = 10;
cau.chieu_rong = 2;

% Struct lồng nhau
cau.vat_lieu.loai = 'Thong';
cau.vat_lieu.mat_do = 500;

% Truy xuất
L = cau.chieu_dai;
loai_go = cau.vat_lieu.loai;

% Kiểm tra field tồn tại
if isfield(cau, 'chieu_dai')
    disp('Có chiều dài');
end
```

**Tài liệu:**
- MATLAB Docs: "Structures"
- Video: "MATLAB Struct Tutorial" (15 phút)

**Bài tập ngay:**
```matlab
% Tạo struct mô tả cây cầu của bạn
my_bridge = struct();
my_bridge.ten = 'Cầu gỗ thử nghiệm';
my_bridge.kich_thuoc.dai = 10;
my_bridge.kich_thuoc.rong = 2;
disp(my_bridge);
```

---

### 1.3. Classes & Objects (30 phút)
**Khi nào cần:** Ngày 3-4

**Học gì:**
```matlab
% File: MyClass.m
classdef MyClass
    properties
        ten
        tuoi
    end
    
    methods
        % Constructor
        function obj = MyClass(ten, tuoi)
            obj.ten = ten;
            obj.tuoi = tuoi;
        end
        
        % Method
        function gioi_thieu(obj)
            fprintf('Tôi là %s, %d tuổi\n', obj.ten, obj.tuoi);
        end
    end
end

% Sử dụng:
nguoi = MyClass('Bình', 25);
nguoi.gioi_thieu();
```

**Khái niệm cần hiểu:**
- `properties`: Biến của class (như struct)
- `methods`: Function của class
- `obj`: Tham chiếu đến object hiện tại
- Constructor: Hàm khởi tạo

**Tài liệu:**
- MATLAB Docs: "Classes and Objects"
- Video: "MATLAB OOP Tutorial" (20 phút đầu, BỎ QUA phần nâng cao)

**Bài tập ngay:**
```matlab
% Viết class HinhChuNhat
% Properties: chieu_dai, chieu_rong
% Methods: tinhDienTich(), tinhChuVi()
```

---

### 1.4. Functions (25 phút)
**Khi nào cần:** Ngày 4-7 (tạo logic tính toán)

**Học gì:**
```matlab
% File: tinhTong.m
function ket_qua = tinhTong(a, b)
    % Tính tổng 2 số
    ket_qua = a + b;
end

% Nhiều output
function [tong, hieu] = tinhTongHieu(a, b)
    tong = a + b;
    hieu = a - b;
end

% Optional parameters
function ket_qua = nhanSo(a, b, he_so)
    if nargin < 3
        he_so = 1;  % Giá trị mặc định
    end
    ket_qua = (a * b) * he_so;
end
```

**Lưu ý quan trọng:**
- Tên file = tên function
- 1 file chỉ 1 function chính
- Đặt trong package: `+TinhToan/tinhDamCau.m`

**Tài liệu:**
- MATLAB Docs: "Function Basics"

**Bài tập ngay:**
```matlab
% Viết function tinhTheTichHCN(dai, rong, cao)
% Viết function kiemTraHopLe(value, min, max)
```

---

### 1.5. Packages (15 phút)
**Khi nào cần:** Ngày 4

**Học gì:**
```matlab
% Cấu trúc folder:
/CauGo_Project/
  +TinhToan/
    tinhDamCau.m
    tinhMomentUon.m
  +Utils/
    validate.m

% File: +TinhToan/tinhDamCau.m
function M = tinhDamCau(L, q)
    M = q * L^2 / 8;
end

% Gọi từ ngoài:
M = TinhToan.tinhDamCau(10, 5);

% Hoặc import:
import TinhToan.*;
M = tinhDamCau(10, 5);
```

**Quy tắc:**
- Folder bắt đầu bằng `+`
- Gọi bằng `TenPackage.TenFunction`

**Tài liệu:**
- MATLAB Docs: "Packages"

---

## 📚 KIẾN THỨC 2: APP DESIGNER

### 2.1. Callbacks Cơ Bản (20 phút)
**Khi nào cần:** Ngày 8-10

**Học gì:**
```matlab
% Trong App Designer:

% Button Callback
function ButtonPushed(app, event)
    % Lấy giá trị từ UI
    L = app.ChieuDaiEditField.Value;
    
    % Tính toán
    M = TinhToan.tinhDamCau(L, 5);
    
    % Hiển thị kết quả
    app.KetQuaLabel.Text = sprintf('M = %.2f kNm', M);
end
```

**Khái niệm:**
- `app`: Tham chiếu đến UI
- `event`: Sự kiện (click, change...)
- `app.ComponentName`: Truy xuất component

**Tài liệu:**
- MATLAB Docs: "App Designer Callbacks"
- Video: "MATLAB App Designer Tutorial Part 2"

---

### 2.2. Truyền Dữ Liệu UI ↔ Logic (25 phút)
**Khi nào cần:** Ngày 9-10

**Học gì:**
```matlab
% Trong App Designer, thêm property:
properties (Access = private)
    cauGoData  % Object CauGoData
end

% Startup callback:
function startupFcn(app)
    app.cauGoData = Data.CauGoData();
end

% Button callback:
function TinhToanButtonPushed(app, event)
    % Cập nhật data từ UI
    app.cauGoData.chieu_dai = app.ChieuDaiEditField.Value;
    app.cauGoData.chieu_rong = app.ChieuRongEditField.Value;
    
    % Tính toán
    app.cauGoData.tinhTrongLuongBanThan();
    
    % Hiển thị
    app.TrongLuongLabel.Text = sprintf('%.2f kN', ...
        app.cauGoData.tai_trong_ban_than);
end
```

**Pattern quan trọng:**
```
UI Input → Update Object → Calculate → Display Result
```

---

## 📚 KIẾN THỨC 3: TESTING & DEBUGGING

### 3.1. Debug Cơ Bản (15 phút)
**Khi nào cần:** Khi gặp lỗi (mọi ngày)

**Học gì:**
```matlab
% 1. Dùng disp/fprintf
disp(my_variable);
fprintf('Giá trị: %f\n', value);

% 2. Breakpoint
% Click vào số dòng trong editor → chạy → dừng tại đó

% 3. Step through
% F10: Next line
% F11: Step into function
% Shift+F5: Continue

% 4. Workspace
% Xem tất cả biến đang có
```

**Tài liệu:**
- MATLAB Docs: "Debugging"

---

### 3.2. Unit Tests Đơn Giản (20 phút)
**Khi nào cần:** Ngày 6-7

**Học gì:**
```matlab
% File: tests/testTinhToan.m
classdef testTinhToan < matlab.unittest.TestCase
    
    methods (Test)
        function testTinhTong(testCase)
            % Arrange
            a = 5;
            b = 3;
            expected = 8;
            
            % Act
            actual = tinhTong(a, b);
            
            % Assert
            testCase.verifyEqual(actual, expected);
        end
        
        function testChieuDaiAm(testCase)
            % Test trường hợp lỗi
            data = Data.CauGoData();
            data.chieu_dai = -5;
            
            isValid = data.kiemTraHopLe();
            testCase.verifyFalse(isValid);
        end
    end
end

% Chạy test:
runtests('testTinhToan')
```

**Pattern AAA:**
- Arrange: Chuẩn bị
- Act: Thực thi
- Assert: Kiểm tra

---

## 📚 KIẾN THỨC 4: GIT NÂNG CAO

### 4.1. Branching (15 phút)
**Khi nào cần:** Ngày 5-6

**Học gì:**
```bash
# Tạo branch mới
git checkout -b feature/tinh-dam-cau

# Làm việc, commit bình thường
git add .
git commit -m "feat: thêm hàm tính dầm cầu"

# Chuyển về main
git checkout main

# Merge branch
git merge feature/tinh-dam-cau

# Xóa branch (sau khi merge)
git branch -d feature/tinh-dam-cau
```

**Khi nào dùng:**
- Làm tính năng lớn
- Thử nghiệm (không chắc chắn)
- Làm song song nhiều thứ

---

### 4.2. Stash (10 phút)
**Khi nào cần:** Khi làm dở phải chuyển việc

**Học gì:**
```bash
# Lưu công việc dở dang
git stash

# Làm việc khác...
git checkout other-branch

# Quay lại, lấy lại công việc
git checkout main
git stash pop
```

---

## 🎓 LỘ TRÌNH HỌC THEO TUẦN

### TUẦN 1: Data & Functions
```
Ngày 2: 
  - Variables (15') → Làm
  - Structs (20') → Làm CauGoData v1

Ngày 3:
  - Classes (30') → Mở rộng CauGoData
  - Debug (15') → Test CauGoData

Ngày 4:
  - Functions (25') → Viết function đầu tiên
  - Packages (15') → Tạo +TinhToan

Ngày 5:
  - Tiếp tục viết functions
  - Git branching (15')
```

### TUẦN 2: Logic + Testing
```
Ngày 6-7:
  - Viết logic tính toán
  - Unit tests (20')

Ngày 8:
  - Callbacks (20') → Kết nối UI

Ngày 9-10:
  - UI ↔ Logic (25') → Hoàn thiện kết nối
```

### TUẦN 3: Hoàn thiện
```
Ngày 11-14:
  - Debug
  - Test toàn bộ
  - Refactor nhẹ
```

---

## 📖 TÀI LIỆU THAM KHẢO

### Tài liệu chính (ƯU TIÊN)
1. **MATLAB Documentation** (official)
   - Tìm kiếm: "matlab [tên khái niệm]"
   - Ví dụ: "matlab struct", "matlab class"

2. **MATLAB Onramp** (FREE course - 2 giờ)
   - Link: mathworks.com/learn/tutorials/matlab-onramp
   - LÀM NGAY nếu còn thời gian

### Video hữu ích
1. "MATLAB Tutorial for Beginners" - YouTube (chọn video < 30 phút)
2. "MATLAB App Designer Tutorial" - YouTube (xem phần 1-2)

### Khi gặp lỗi
1. Copy error message → Google
2. Stack Overflow
3. ChatGPT/Claude (paste code + lỗi)

---

## ✅ CHECKLIST KIẾN THỨC TỐI THIỂU

### Trước khi bắt đầu Tuần 2:
- [ ] Biết tạo class với properties và methods
- [ ] Biết viết function có input/output
- [ ] Biết dùng package (+TinhToan)
- [ ] Biết debug bằng disp và breakpoint

### Trước khi bắt đầu Tuần 3:
- [ ] Biết viết callback trong App Designer
- [ ] Biết truyền data từ UI → Logic → UI
- [ ] Biết viết 1 unit test đơn giản

---

## 💡 MẸO HỌC HIỆU QUẢ

### 1. Học 20-80
- 20% thời gian: Học lý thuyết
- 80% thời gian: Làm thực hành

### 2. Copy-Paste thông minh
- Copy code mẫu → Chạy → Hiểu → Sửa → Làm lại không nhìn

### 3. Note ngắn gọn
```matlab
% CHÚ THÍCH CỦA TÔI: Hàm này tính moment uốn
% Input: L (m), q (kN/m)
% Output: M (kNm)
% Công thức: M = qL²/8
function M = tinhMomentUon(L, q)
    M = q * L^2 / 8;
end
```

### 4. Hỏi AI đúng cách
❌ "Code giúp tôi tính cầu gỗ"
✅ "Em có struct CauGoData với field chieu_dai, chieu_rong. Em muốn viết method tinhDienTich(). Code mẫu như thế nào?"

---

## 🚫 SAI LẦM THƯỜNG GẶP (TRÁNH)

### 1. Học quá nhiều trước khi làm
- ❌ Xem hết khóa MATLAB 10 giờ
- ✅ Học struct 20 phút → làm CauGoData ngay

### 2. Copy code không hiểu
- ❌ Copy nguyên code AI → chạy → commit
- ✅ Copy → Đọc từng dòng → Sửa → Hiểu → Commit

### 3. Không test
- ❌ Viết xong 10 functions → test 1 lần
- ✅ Viết 1 function → test ngay → viết tiếp

### 4. Refactor quá sớm
- ❌ Code xong 50% → "để tôi viết lại cho đẹp"
- ✅ Code xong 100% → chạy được → refactor

---

## 📞 KHI NÀO CẦN HỌC THÊM?

### GẶP CÁI NÀY → HỌC NGAY:
- Error message không hiểu
- Cần tính năng mới (ví dụ: đọc file Excel)
- Code chạy sai kết quả

### GẶP CÁI NÀY → BỎ QUA:
- "Advanced OOP in MATLAB"
- "MATLAB for Machine Learning"
- "MATLAB Performance Optimization"
- Bất cứ thứ gì có chữ "Advanced"

---

## 🎯 MỤC TIÊU CUỐI CÙNG

Sau 14 ngày, bạn sẽ:
- ✅ Hiểu struct, class, function, package
- ✅ Viết được logic tính toán
- ✅ Kết nối UI với logic
- ✅ Debug khi có lỗi
- ✅ Commit có hệ thống
- ✅ **HOÀN THÀNH DỰ ÁN**

**KHÔNG CẦN:**
- ❌ Trở thành MATLAB expert
- ❌ Hiểu hết MATLAB documentation
- ❌ Code đẹp như sách giáo khoa

**CHỈ CẦN:**
- ✅ Code chạy được
- ✅ Logic đúng
- ✅ Có thể sửa khi cần

