% Message Window
msgbox('Enter values into command line.', 'Popup Window', 'help');

% Get game board dimensions from user
board_rows = input('Number of rows? \n');
board_columns = input('Number of columns? \n');

% Create game board
game_board = create_board(board_rows,board_columns);
imshow(game_board, [0 255],'InitialMagnification','fit');
truesize([400 400])
axis off;

game_board(10:20,10:20,:) = 0;
imshow(game_board);
truesize([400 400]);