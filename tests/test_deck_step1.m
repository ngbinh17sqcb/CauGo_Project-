cd 'C:\Users\ADM\CauGo_Project'
addpath(genpath(pwd))

DS = CauGoData.default();
DS = core.nhipcau.solve_deck(DS);

disp(DS.KetQua.NhipCau)
