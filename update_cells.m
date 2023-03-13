function [new_generation] = update_cells(prev_generation)
%UPDATE_CELLS determines the positions of the next generation of cells
%   Copy previous generation data onto a new variable to be modified
new_generation = prev_generation;
prev_dimension = size(prev_generation);

%   Look through individual grid units, including the border
for ii = 1:prev_dimension(1)
    for jj = 1:prev_dimension(2)
        % neighbor_count is reset for each grid unit
        neighbor_count = 0;
        % Looking through a 3x3 grid centered on grid unit at position
        % (ii,jj) to get the number of neighbors
        for yy = max(1,ii-1):min(prev_dimension(1),ii+1)
            for xx = max(1,jj-1):min(prev_dimension(2),jj+1)
                % Exempting the grid unit itself
                if ~(yy == ii && xx == jj) && prev_dimension(3) > 1 && all(prev_generation(yy,xx,:) == 0)
                    % If adjacent grid unit is black, i.e. has a live cell
                    neighbor_count = neighbor_count+1;
                end
            end
        end
        % Protocol for grid unit with live cell
        if prev_generation(ii,jj,1) == 0
            if neighbor_count == 2 || neighbor_count == 3
                new_generation(ii,jj,:) = 0;
            else
                new_generation(ii,jj,:) = 255;
            end
        end
        % Protocol for empty grid unit
        if prev_generation(ii,jj,:) == 255
            if neighbor_count == 3
                new_generation(ii,jj,:) = 0;
            end
        end
    end
end
end
