def create_blank_board()
    board = []
    # 7 by 7 board
    for a in 0..8
        for b in 0..8
            if a == 0 or a == 8 or b == 0 or b == 8
                board << [a,b,"W"]
            elsif a == 1 and (1..7).include? b
                board << [a,b,"A"]
            else
                board << [a,b,"F"]
            end
        end
    end
    return board
end

#     board_by_up_right_diag = func_board_by_right_diag(board)
#     board_by_down_right_diag = board_by_up_right_diag.clone.reverse()
#     board_by_up_left_diag = func_board_by_left_diag(board)
#     board_by_down_left_diag = board_by_up_left_diag.clone.reverse()

def func_board_by_column(board)
    out_array = []
    start = 0
    for a in 0..8
        start = 0
        for b in 0..8
            out_array << board[a + start]
            start = start + 9
        end
    end
    return out_array
end

def func_board_by_left_diag(board)
    out_array = []
    out_array_indexes = []
    start = 0
    up = true
    c = 0
    while out_array.length <= 80
        a = 0
        if up == true
            for b in 0..start
                out_array << board[a + b + c]
                out_array_indexes << a + b + c
                a = a + 7
            end
            c = c + 1
            start = start + 1
        else
            for b in 0..start
                out_array << board[a + b + c]
                out_array_indexes << a + b + c
                a = a + 7
            end
            c = c + 9
            start = start - 1
        end

        if start == 9
            start = start - 2
            up = false
            c = c + 8
        end
    end 
    p out_array_indexes 
    return out_array
end

def func_board_by_right_diag(board)

end



board = create_blank_board()
board_by_row_forward = board.clone
board_by_row_backward = board.clone.reverse()
board_by_column = func_board_by_column(board)
board_by_up_left_diag = func_board_by_left_diag(board)
board_by_down_left_diag = board_by_up_left_diag.clone.reverse()


# p board_by_row_forward
# p board_by_column
p board_by_up_left_diag