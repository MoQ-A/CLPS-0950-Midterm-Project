function [] = update_board(old_board)
% UPDATE_BOARD 
%   Detailed explanation goes here
    imshow(game_board, [0 255],'InitialMagnification','fit');
    truesize([400 400])
    axis off;