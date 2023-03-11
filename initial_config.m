function [new_board] = initial_config(blank_board,cluster_count)
%INITIAL_CONFIG Takes blank game board and generates random starting
%configuration
%   Detailed explanation goes here
    new_board = blank_board;
    cell_count = dimension1*dimension2;
    kk = 0;
    while kk < cluster_count
	    for ii = 2:length(blank_board)-1
		    for jj = 2:lenth(blank_board)-1
			    if randi(cell_count) < 2*cluster_count*cell_count
                    new_board(ii,jj,:) = 0;
                    kk = kk+1;
                end
            end
        end
    end
end

