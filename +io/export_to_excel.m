function export_to_excel(fullpath, sheets)
% fullpath: "C:\...\DuLieuCauGo_....xlsx"
% sheets: struct; mỗi field là 1 sheet (cell 2D hoặc table)

    if nargin < 2 || ~isstruct(sheets)
        error("sheets phải là struct.");
    end

    [folder,~,~] = fileparts(fullpath);
    if ~exist(folder,'dir')
        error("Không tồn tại thư mục xuất: %s", folder);
    end

    % Xoá file cũ nếu trùng tên (hiếm)
    if exist(fullpath,'file')
        delete(fullpath);
    end

    sheetNames = fieldnames(sheets);

    % --- ghi dữ liệu ---
    for k = 1:numel(sheetNames)
        sh = sheetNames{k};
        data = sheets.(sh);

        if istable(data)
            writetable(data, fullpath, 'Sheet', sh, 'WriteMode', 'overwritesheet');
        elseif iscell(data)
            writecell(data, fullpath, 'Sheet', sh);
        else
            error("Sheet '%s' phải là table hoặc cell.", sh);
        end
    end

    % --- format (nếu máy có Excel COM) ---
    try
        e = actxserver('Excel.Application');
        e.Visible = false;
        wb = e.Workbooks.Open(fullpath);

        for k = 1:numel(sheetNames)
            ws = wb.Worksheets.Item(sheetNames{k});
            ws.Cells.Font.Name = 'Times New Roman';
            ws.Cells.Font.Size = 12;
            ws.Columns.AutoFit;
            ws.Rows.AutoFit;

            used = ws.UsedRange;
            used.Borders.LineStyle = 1; % xlContinuous
        end

        wb.Save;
        wb.Close(false);
        e.Quit;
        delete(e);
    catch
        % Không có Excel COM vẫn OK: file đã xuất được, chỉ thiếu format
    end
end
