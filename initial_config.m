function [new_board] = initial_config(blank_board,cluster_count,density)

%INITIAL_CONFIG Takes blank game board and generates random starting
%configuration
%   Generates a 'cluster_count' number of 2x2 sqaure clusters of cells 
new_board = blank_board;
grid_count = (length(blank_board))^2;
kk = 0;
for ii = 10:3:length(blank_board)-2
    for jj = 5:3:length(blank_board)-2
        % Chance of a given grid unit generating a cell scales
        % with the size of the board (i.e. bigger board equals
        % smaller chance for a given grid unit)
	    if randi(grid_count) < (density*grid_count)/(cluster_count)
            config_select = randi(4);
            if config_select == 1
                new_board(ii:ii+3,jj:jj+3,1:3) = 0;
            end
            if config_select == 2
                new_board(ii:ii+3,jj,1:3) = 0;
                new_board(ii,jj:jj+3,1:3) = 0;
            end
            if config_select == 3
                new_board(ii,jj-3:jj+3,1:3) = 0;
                new_board(ii-3:ii+3,jj,1:3) = 0;
            end
            if config_select == 4
                new_board(ii:ii+3,jj:jj+3,2:3) = 0;
                new_board(ii:ii+3,jj:jj+3,1) = 255;
                kk = kk-1;
            end
            kk = kk+1;
            if kk == cluster_count
                return
            end
        end
    end
end


end

