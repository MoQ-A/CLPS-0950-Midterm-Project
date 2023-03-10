function [game_board] = create_board(rows,columns)
% create_board creates the default board of customizable size with all white spaces
%   The game board dimensions are determined from input variables 
chan_img = 255*ones(rows,columns);
game_board = cat(3,chan_img,chan_img,chan_img);
end