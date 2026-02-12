DS.ThongSo.chieu_dai_m = 12;
DS.ThongSo.so_dam_n = 5;
% Validation
if DS.ThongSo.so_dam_n <=0
    uialert(app.UIFigure,'Số dầm phải lớn hơn 0','Lỗi dữ liệu');
    return;
end

% Tinh toan
DS.KetQua.khoang_cach_dam_a = ...
    DS.ThongSo.chieu_dai_m / (DS.ThongSo.so_dam_n - 1);
disp(DS.KetQua.khoang_cach_dam_a);
