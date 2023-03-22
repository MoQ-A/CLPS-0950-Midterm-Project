% Message Window
instructions = msgbox('Enter values into command line.','Instructions','help');
waitfor(instructions);

% Variable to control the exit of game
game_run = 1;

% Game script
while game_run == 1
    % Get game game simulation parameters from user
    side_length = input('What is the game board size? \n');
    while side_length <= 0
        side_length = input('Please enter a value greater than zero. \n');
    end
    cluster_count = input('Maximum number of cell clusters? \n');
    while cluster_count <= 0
        cluster_count = input('Please enter a value greater than zero. \n');
    end
    density = input('What is the initial population density ["1" is defualt]? \n');
    while density <= 0
        density = input('Please enter a value greater than zero. \n');
    end
    generation_count = input('How many generations? \n');
    while generation_count <= 0
        generation_count = input('Please enter a value greater than zero. \n');
    end
    
    
    % Create game board
    game_board = create_board(side_length);
    game_board = initial_config(game_board,cluster_count,density);
    figure('Name','Generation 1')
    update_board(game_board);
    initial_pop = population_count(game_board);
    
    % Beginning simulation
    legend = msgbox(["BLACK = Living Cell";"WHITE = Empty Area"; ...
    "RED = Uninhabitable Zone"],'Legend','help');
    waitfor(legend);
    pop_data = [initial_pop,];
    for count = 2:generation_count
    game_board = update_cells(game_board);
    figure('Name',strcat('Generation',num2str(count)))
    update_board(game_board);
    population = population_count(game_board);
    pop_data = cat(2,pop_data, population);
    end
    
    % Graph population over time (Generation number)
    pop_graph = msgbox('Click to see population trend','Continue');
    waitfor(pop_graph);
    plot(1:generation_count,pop_data,"--diamondr");
    xlabel('Generation');
    ylabel('Number of Live Cells');
    title('Cell Population');
    
    % Clear Board
    clear_msg = msgbox('Enter "1" into the command line to clear the board', ...
    'Reset Game','help');
    waitfor(clear_msg);
    clear_board = input('Enter "1" to clear figures. \n');
    if clear_board == 1
    close all
    end

    % End of round
    end_message = msgbox(['Enter "1" into the command line to play again.' ...
        ' Enter "0" to quit.'],'Exit Game');
    waitfor(end_message);
    game_run = input('Enter "1" to play again or "0" to exit the program. \n');
    
end

if game_run == 0
    thankyou_message = msgbox('Thank you for playing','BYE');
end
