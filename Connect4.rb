require "./create_blank_board.rb"
require "./rotate_board2.rb"
require "./print_board_to_screen.rb"
require "./test_for_win.rb"
require "./test_for_next_turn_win"
require "./minimax.rb"
require "./move_made_update_board.rb"
require "./is_pos_avalible.rb"
require "./test_for_score.rb"
require "./known_boards.rb"

gamestate = "running"
if rand(1..2) == 2
    turn_of = "computer"
else
    turn_of = "human"
end
message = ""
board = create_blank_board()


while gamestate == "running"
    puts `clear`
    print_board(board)
    win = test_for_a_win(board)
    if win[0] == true
        turn_of = 0
        case win[1]
        when 1
            puts "Player wins!!"
        when 2
            puts "Computer wins!!"
        when 3
            puts "Tie!!"
        end
        exit
    end
    case turn_of
    when "computer"
        # AI time
        win_q = test_for_next_turn_win(board, "C")
        if win_q[0] != true
            win_q = test_for_next_turn_win(board, "H")
            if win_q[0] != true
                known = is_in_known_boards(board)
                if known[0] == true
                    best_move = known[1]
                    best_move_row = known[2]
                else
                    best_score = -1.0/0.0
                    best_move = 1
                    for i in 1..7
                        avalible = is_pos_avalible(i, board)
                        if avalible[0] == 1
                            move_row = avalible[1]
                            board_for_score = make_board_for_score_test(i, turn_of, board.clone, move_row)
                            board_for_move = move_made_update_board(i, turn_of, board.clone, move_row)
                            score = minimax(board_for_score, board_for_move, 3, -1.0/0.0, +1.0/0.0, false)
                            if score > best_score
                                best_score = score
                                best_move = i
                                best_move_row = avalible[1]
                            end
                        end
                    end
                end
            else
                best_move = win_q[1]
                avalible = is_pos_avalible(best_move, board)
                best_move_row = avalible[1]
            end
        else
            best_move = win_q[1]
            avalible = is_pos_avalible(best_move, board)
            best_move_row = avalible[1]
        end
        p best_move
        p turn_of
        p board
        p best_move_row
        board = move_made_update_board(best_move, turn_of, board, best_move_row)
        turn_of = "human"
    when "human"
        print "#{message} Select 1 - 7 to make a move: "
        p_move = gets.chomp.to_i
        if (1..7).include? p_move
            avalible = is_pos_avalible(p_move, board)
            if avalible[0] == 1
                board = move_made_update_board(p_move, turn_of, board, avalible[1])
                turn_of = "computer"
                message = ""
            else
                message = "Position not avalible!! Enter another position.. "
            end
        else
            message = "invalid move!! please try again.. "
        end
    end
end

#win_next_turn = test_for_next_turn_win(board, "C")