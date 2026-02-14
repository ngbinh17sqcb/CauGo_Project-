function DS = solve_bovia(DS)
% Step 1: skeleton
if ~isfield(DS,"KetQua"), DS.KetQua = struct(); end
if ~isfield(DS.KetQua,"NhipCau"), DS.KetQua.NhipCau = struct(); end
DS.KetQua.NhipCau.BoVia = struct("kt","", "lbv_cm", NaN);

disp("solve_bovia: skeleton");
end
