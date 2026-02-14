function sheets = make_export_vanvet(DS)

    vv = DS.KetQua.NhipCau.VanVet;

    % Sheet NhipCau (ván vệt)
    sheets.NhipCau = {
        'BỘ PHẬN', 'THÔNG SỐ', 'GIÁ TRỊ';
        'VÁN VỆT', 'kích thước', char(string(vv.kt));
        '', 'd_vv_cm', vv.d_vv_cm;
        '', 'b_vv_cm', vv.b_vv_cm;
        '', 'h_vv_cm', vv.h_vv_cm;
        '', 'is_tron', double(vv.is_tron);
        '', 'loai_go', char(string(vv.loai_go));
    };


    % Sheet Input (tối thiểu)
    sheets.Input = {
        'NHÓM', 'THÔNG SỐ', 'GIÁ TRỊ';
        'ThongSoChung', 'H', DS.ThongSoChung.H;
        'DauVao', 'LoaiGoVanVet', char(string(DS.DauVao.LoaiGoVanVet));
    };

    

end
