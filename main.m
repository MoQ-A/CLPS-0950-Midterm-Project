% Message Window
% msgbox('Enter values into command line.', 'Popup Window', 'help');

% Get game board dimensions from user
board_rows = input('Number of rows? \n');
board_columns = input('Number of columns? \n');
cluster_count = input('Number of cell clusters? \n');

% Create game board
game_board = create_board(board_rows,board_columns);
game_board = initial_config(game_board,cluster_count,board_rows,board_columns);
update_board(game_board);

% Beginning simulation
generation_count = input('How many generations? \n');
for count = 1:generation_count
    game_board = update_cells(game_board);
    update_board(game_board);
    imshow(game_board, [0 255],'InitialMagnification','fit');
    pause(2);
%     update_UI();
end
