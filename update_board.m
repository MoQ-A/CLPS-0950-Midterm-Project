function [] = update_board(game_board)
% UPDATE_BOARD updates the figure for the board showing new positions

%   Creating RED uninhabitable zone
    game_board(1,:,2:3) = 0;
    game_board(1,:,1) = 255;
    game_board(end,:,2:3) = 0;
    game_board(end,:,1) = 255;
    game_board(:,1,2:3) = 0;
    game_board(:,1,1) = 255;
    game_board(:,end,2:3) = 0;
    game_board(:,end,1) = 255;

%   Takes board matrix and makes it into an image while formatting into
%   specific dimensions
    imshow(game_board, [0 255],'InitialMagnification','fit');
    truesize([500 500])
    axis off;
    pause(0.5);
    hold off;

%   Create message box showing current generation (developer testing feature)
%   msgbox(generation_num, 'Generation');