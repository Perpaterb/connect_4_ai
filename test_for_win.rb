def test_a_board_for_win(board)
    win = [false, ]
    array = []
    for i in board
        array << i[2]
    end 
    p array.join()
    array = array.join
    if array.include? "1111"
        win = [true, 1]
    end
    if array.include? "2222"
        win = [true, 2]
    end
    return win 
end

def test_for_a_win(board)
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
        win = test_a_board_for_win(board_to_test)
        if win[0] == true
            return win
            break
        end
    end
    return win
end