function clear_board()

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