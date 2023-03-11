function [next_generation] = update_cells(prev_generation)
%UPDATE_CELLS determines the posiitons of the next generation of cells
%   Copy previous generation data onto a new variable to be modified
    next_generation = prev_generation;

%   The if statments in the For loop can be replaced by nesting another For
%   loop within
    for ii = 2:length(prev_generation)-1
        for jj = 2:length(prev_generation)-1
            % neighbor_count is reset for each grid unit
            neighbor_count = 0;
            % Looking through a 3x3 grid centered on grid unit at position
            % (ii,yy)
            for yy = ii-1:ii+1
                for xx = jj-1:jj+1
                    % Exempting the grid unit itself
                    if yy ~= ii && xx ~= jj
                        % If adjacent grid unit is black, i.e. has a live
                        % cell
                        if next_generation(yy,xx,:) == 0
                            neighbor_count = neighbor_count+1;
                        end
                    end

                end
            end
            if neighbor_count < 2 || neighbor_count > 2
                next_generation(ii,jj,:) = 255;
            end
        end
    end

end

