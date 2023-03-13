% chan_img = 255*ones(30);
% test_mat = cat(3,chan_img,chan_img,chan_img);
% test_mat(10:11,10:11,:) = 0;
% test_mat(3:4,3:4,:) = 0;

game_board = create_board(10);
game_board = initial_config(game_board,2);
next_gen = update_cells(game_board);
