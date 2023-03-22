function [population] = population_count(game_board)

%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
population = 0;
side_length = length(game_board);
for ii = 1:side_length
    for jj = 1:side_length
        if game_board(ii,jj,:) == 0
            population = population + 1;
        end
    end
end

end