% Message Window
instructions = msgbox('Enter values into command line.', 'Popup Window', 'help');
waitfor(instructions);

% Get game game simulation parameters from user
side_length = input('What is the game board size? \n');
cluster_count = input('Number of cell clusters? \n');
generation_count = input('How many generations? \n');

% Create game board
game_board = create_board(side_length);
game_board = initial_config(game_board,cluster_count);
figure('Name','Generation 1')
update_board(game_board);

% Beginning simulation
legend = msgbox(["BLACK = Living Cell";"WHITE = Empty Area"; ...
    "RED = Uninhabitable Zone"],'Legend','help');
waitfor(legend);
for count = 2:generation_count
    game_board = update_cells(game_board);
    figure('Name',strcat('Generation',num2str(count)))
    update_board(game_board);
end


% Clear Board
clear_msg = msgbox('Enter 1 into the command line to clear the board', ...
    'Reset Game', 'help');
waitfor(clear_msg);
clear_board = input('Enter "1" to clear boards. \n');
if clear_board == 1
    for ii = generation_count:-1:1
        fig = figure(ii);
        close(fig);
    end
end
