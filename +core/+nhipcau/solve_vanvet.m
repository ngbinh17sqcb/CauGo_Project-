function DS = solve_vanvet(DS)
    H = DS.ThongSoChung.H;

    goVV = string(DS.DauVao.LoaiGoVanVet);
    if strlength(strtrim(goVV)) == 0
        goVV = "Gỗ xẻ"; % mặc định theo yêu cầu
    end
    goVV_l = lower(goVV);

    if H == 8
        d_vv = 10;  b_vv = 20;  h_vv = 4;
    else
        d_vv = 12;  b_vv = 20;  h_vv = 5;
    end

    is_tron = contains(goVV_l,"tròn") || contains(goVV_l,"tron");

    if is_tron
        kt = "d=" + string(d_vv);
    else
        kt = string(sprintf('%.0fx%.0f', b_vv, h_vv));
    end

    DS.KetQua.NhipCau.VanVet.kt = kt;

    % số liệu thô để export Excel
    DS.KetQua.NhipCau.VanVet.d_vv_cm = d_vv;
    DS.KetQua.NhipCau.VanVet.b_vv_cm = b_vv;
    DS.KetQua.NhipCau.VanVet.h_vv_cm = h_vv;
    DS.KetQua.NhipCau.VanVet.is_tron = is_tron;
    DS.KetQua.NhipCau.VanVet.loai_go = goVV; % lưu luôn cho chắc
end
