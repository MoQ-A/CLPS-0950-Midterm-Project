% Message Window
% msgbox('Enter values into command line.', 'Popup Window', 'help');

% Get game game simulation parameters from user
side_length = input('What is the game board size? \n');
cluster_count = input('Number of cell clusters? \n');
generation_count = input('How many generations? \n');

% Create game board
game_board = create_board(side_length);
game_board = initial_config(game_board,cluster_count);
figure('Name','Starting Configuration')
update_board(game_board);

% Beginning simulation
for count = 1:generation_count
    game_board = update_cells(game_board);
    figure(count)
    update_board(game_board);
end

% Clear Board
clear_board = input('Enter "1" to clear boards. \n');
if clear_board == 1
    for ii = 1:generation_count
        fig = figure(ii);
        close(fig);
    end
end
