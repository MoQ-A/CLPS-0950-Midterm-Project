% game_board = create_board(10);
% game_board = initial_config(game_board,2);
% next_gen = update_cells(game_board);

% fhandle = @(x,y) x.^2 + y.^2;
% fhandle(2,4);

message = msgbox('Enter values into command line.', 'Popup Window', 'help');
waitfor(message);

disp('Message Done');

legend = msgbox(["BLACK = Living Cell";"WHITE = Empty Area";"RED = Uninhabitable Zone"],'Legend','help');
waitfor(legend);

disp('Legend Done');
