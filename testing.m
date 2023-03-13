chan_img = 255*ones(30);
test_mat = cat(3,chan_img,chan_img,chan_img);
test_mat(10:11,10:11,:) = 0;
next_mat = update_cells(test_mat);
