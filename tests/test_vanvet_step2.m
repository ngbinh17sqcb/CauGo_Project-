% --- Auto add project root based on this test file location ---
thisFile = mfilename('fullpath');
testsDir = fileparts(thisFile);
projRoot = fileparts(testsDir);

restoredefaultpath; rehash toolboxcache
addpath(genpath(projRoot)); rehash
clear functions; rehash toolboxcache

% Case 1: H=8, gỗ tròn -> d=10
DS = struct();
DS.ThongSoChung = struct('H', 8);
DS.DauVao = struct('LoaiGoVanVet', "Gỗ tròn");

DS = core.nhipcau.solve_vanvet(DS);

assert(DS.KetQua.NhipCau.VanVet.kt == "d=10");
assert(DS.KetQua.NhipCau.VanVet.d_vv_cm == 10);
assert(DS.KetQua.NhipCau.VanVet.b_vv_cm == 20);
assert(DS.KetQua.NhipCau.VanVet.h_vv_cm == 4);
assert(DS.KetQua.NhipCau.VanVet.is_tron == true);
assert(DS.KetQua.NhipCau.VanVet.loai_go == "Gỗ tròn");

% Case 2: H!=8, để trống -> mặc định gỗ xẻ -> 20x5
DS.ThongSoChung.H = 9;
DS.DauVao.LoaiGoVanVet = "";

DS = core.nhipcau.solve_vanvet(DS);

assert(DS.KetQua.NhipCau.VanVet.kt == "20x5");
assert(DS.KetQua.NhipCau.VanVet.is_tron == false);
assert(DS.KetQua.NhipCau.VanVet.loai_go == "Gỗ xẻ");

disp("OK: test_vanvet_step2");
