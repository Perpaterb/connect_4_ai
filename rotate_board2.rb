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

def func_board_by_right_diag(board)
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
                a = a + 7
            end
            c = c + 1
            start = start + 1
        else
            for b in 0..start
                out_array << board[a + b + c]
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
    return out_array
end

def func_board_by_left_diag(board)
    out_array = []
    out_array_indexes = []
    start = 8
    up = true
    c = 0
    while out_array.length <= 80
        a = 0
        if up == true
            for b in start..8
                out_array << board[a + b + c]
                a = a + 9
            end
            start = start - 1
        else
            for b in start..8
                out_array << board[a + b + c]
                a = a + 9
            end
            c = c + 8
            start = start + 1
        end

        if start == -1
            start = start + 2
            up = false
            c = c + 8
        end
    end 
    return out_array
end
