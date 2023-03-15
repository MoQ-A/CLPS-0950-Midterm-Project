function [game_board] = create_board(side_length)
% CREATE_BOARD creates the default board of customizable size with all white spaces
%   The game board dimensions are determined from input variables 
    chan_img = 255*ones(side_length);
    game_board = cat(3,chan_img,chan_img,chan_img);
end