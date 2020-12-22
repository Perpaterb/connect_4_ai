def test_a_board_for_win_next_turn(board_to_test, player)
    win_next_turn = [false, nil]
    player = player.to_s
    array = []
    array_pos = []
    for i in board_to_test
        array << i[2]
        array_pos << i[1]
    end 
    array = array.join
    if array.include? "A#{player}#{player}#{player}"
        where = array.index("A#{player}#{player}#{player}")
        win_next_turn = [true, array_pos[where]]
    end
    if array.include? "#{player}#{player}#{player}A"
        where = array.index("#{player}#{player}#{player}A")
        win_next_turn = [true, array_pos[where+3]]
    end
    return win_next_turn 
end


def test_for_next_turn_win(board, player)
    for i in 0..3
        case i
        when 0
            board_to_test = board.clone
        when 1
            board_to_test = func_board_by_column(board)
        when 2
            board_to_test = func_board_by_left_diag(board)
        when 3
            board_to_test = func_board_by_right_diag(board)
        end
        win_next_turn = test_a_board_for_win_next_turn(board_to_test, player)
        if win_next_turn[0] == true
            return win_next_turn
            break
        end
    end
    return win_next_turn
end