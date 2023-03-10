% Get game board dimensions from user
board_rows = input('Number of rows? \n');
board_columns = input('Number of columns? \n');

% Create game board
game_board = create_board(board_rows,board_columns);
imshow(game_board,[0 255]);
colorbar;
colormap rgb
axis off; axis image;