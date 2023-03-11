function [] = update_board(old_board)
% UPDATE_BOARD updates the figure for the board showing new positions
%   Takes board matrix and makes it into an image while formatting into
%   specific dimensions
    imshow(old_board, [0 255],'InitialMagnification','fit');
    truesize([500 500])
    axis off;