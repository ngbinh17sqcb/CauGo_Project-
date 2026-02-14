function DS = solve_deck(DS)
% Nhịp cầu - phần mặt cầu: ván vệt + bó vỉa + VLN (chiều dài)
% Step 1: gọi các solver con (chưa tính gì nếu solver con còn rỗng)

DS = core.nhipcau.solve_vanvet(DS);
DS = core.nhipcau.solve_bovia(DS);
DS = core.nhipcau.solve_vanlatngang(DS);

disp("=== NhipCau Deck: DONE (Step 1 skeleton) ===");
end
