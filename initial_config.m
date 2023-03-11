function [new_board] = initial_config(blank_board,cluster_count,rows,columns)
%INITIAL_CONFIG Takes blank game board and generates random starting
%configuration
%   Generates a 'cluster_count' number of 2x2 sqaure clusters of cells 
    new_board = blank_board;
    cell_count = rows*columns;
    kk = 0;
    for ii = 2:3:length(blank_board)-1
	    for jj = 2:3:length(blank_board)-1
            % Chance of a given grid unit generating a cell scales
            % with the size of the board (i.e. bigger board equals
            % smaller chance for a given grid unit)
		    if randi(cell_count) < cell_count/(3.25*cluster_count)
                new_board(ii:ii+1,jj:jj+1,1:3) = 0;
                kk = kk+1;
                if kk == cluster_count
                    return
                end
            end
        end
    end
end

