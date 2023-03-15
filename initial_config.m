function [new_board] = initial_config(blank_board,cluster_count)
%INITIAL_CONFIG Takes blank game board and generates random starting
%configuration
%   Generates a 'cluster_count' number of 2x2 sqaure clusters of cells 
    new_board = blank_board;
    cell_count = (length(blank_board))^2;
    kk = 0;
    for ii = 10:5:length(blank_board)-2
        for jj = 5:5:length(blank_board)-2
            % Chance of a given grid unit generating a cell scales
            % with the size of the board (i.e. bigger board equals
            % smaller chance for a given grid unit)
		    if randi(cell_count) < cell_count/(2*cluster_count)
                config_select = randi(3);
                if config_select == 1
                    new_board(ii:ii+4,jj:jj+4,1:3) = 0;
                end
                if config_select == 2
                    new_board(ii:ii+3,jj,1:3) = 0;
                    new_board(ii,jj:jj+3,1:3) = 0;
                end
                if config_select == 3
                    new_board(ii,jj:jj+5,1:3) = 0;
                end
                kk = kk+1;
                if kk == cluster_count
                    return
                end
            end
        end
    end
end

