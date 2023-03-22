function new_board = select_region(old_board)

dimensions = size(old_board);
side_length = dimensions(2);
new_board = old_board;
new_board = figure;
for ii = 1:2:side_length-1
    for jj = 1:2:dimensions-1
        p = patch([ii ii ii+1 ii+1],[jj jj+1 jj+1 jj],'g');
    end
set(p,'ButtonDownFcn',@(~,~)disp('patch'),...
   'PickableParts','all','FaceColor','none')

end

% old_board = create_board(20);
% new_board = select_region(old_board);
% update_board(new_board);