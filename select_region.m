function new_board = select_region(old_board,dimensions)
new_board = old_board;
new_board = figure;
num_block = dimensions/2;
for ii = 1:2:dimensions-1
    for jj = 1:2:dimensions-1
        p = patch([ii ii+1],[jj jj+1],'g');
    end
end

set(p,'ButtonDownFcn',@(~,~)disp('patch'),...
   'PickableParts','all','FaceColor','none')