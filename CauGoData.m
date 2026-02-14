classdef CauGoData
    methods(Static)
        function DS = default()
            DS = struct();
            DS.Meta = struct("project","CauGo_Project","version","2026-rebuild");
            DS.ThongSoChung = struct("H",NaN,"B",NaN,"SoDam",NaN,"L",NaN,"Lt",NaN);
            DS.DauVao = struct();
            DS.TrungGian = struct();
            DS.KetQua = struct();
        end
    end
end
