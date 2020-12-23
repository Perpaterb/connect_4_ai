require "./create_blank_board.rb"
require "./rotate_board2.rb"
require "./print_board_to_screen.rb"
require "./test_for_win.rb"
require "./test_for_next_turn_win"
require "./minimax.rb"
require "./move_made_update_board.rb"

gamestate = "running"
turn_of = "human"
message = ""
board = create_blank_board()
while gamestate == "running"
    #puts `clear`
    print_board(board)
    win = test_for_a_win(board)
    if win[0] == true
        turn_of = 0
        if win[1] == 1
            puts "Player wins!!"
        else
            puts "Computer wins!!"
        end
    end
    if turn_of == "computer"
        # AI time


        print "#{message} Select 1 - 7 to make a move: "
        p_move = gets.chomp.to_i
        if (1..7).include? p_move
            avalible = is_pos_avalible(p_move, board)
            if avalible[0] == 1
                board = move_made_update_board(p_move, turn_of, board, avalible[1])
                turn_of = "human"
            else
                message = "Position not avalible!! Enter another position.. "
            end
        else
            message = "invalid move!! please try again.. "
        end





    end  
    if turn_of == "human"
        print "#{message} Select 1 - 7 to make a move: "
        p_move = gets.chomp.to_i
        if (1..7).include? p_move
            avalible = is_pos_avalible(p_move, board)
            if avalible[0] == 1
                board = move_made_update_board(p_move, turn_of, board, avalible[1])
                turn_of = "computer"
            else
                message = "Position not avalible!! Enter another position.. "
            end
        else
            message = "invalid move!! please try again.. "
        end
    end
end

#win_next_turn = test_for_next_turn_win(board, "C")