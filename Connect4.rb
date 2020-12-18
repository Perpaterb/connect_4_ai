def create_blank_board()
    board = []
    # 7 by 7 board
    for a in 1..9
        for b in 1..9
            board << [a,b,"F"]
        end
    end
    return board
end

def make_board_in_all_directions(board)
    board_by_row_forward = board.clone
    board_by_row_backward = board.clone.reverse()
    board_by_column = func_board_by_column(board)
    board_by_right_diag = func_board_by_right_diag(board)
    board_by_left_diag = func_board_by_left_diag(board)
end


def func_board_by_column(board)
    board

end

def func_board_by_right_diag(board)


end

def func_board_by_left_diag(board)


end




board = create_blank_board()