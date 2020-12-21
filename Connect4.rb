class String
    def red;            "\033[31m#{self}\033[0m" end
    def green;          "\033[32m#{self}\033[0m" end
end


def create_blank_board()
    board = [[8, 8, "W"], [8, 7, "W"], [8, 6, "W"], [8, 5, "W"], [8, 4, "W"], [8, 3, "W"], [8, 2, "W"], [8, 1, "W"], [8, 0, "W"], 
             [7, 8, "W"], [7, 7, "W"], [7, 6, "W"], [7, 5, "W"], [7, 4, "W"], [7, 3, "W"], [7, 2, "W"], [7, 1, "W"], [7, 0, "W"],
             [6, 8, "W"], [6, 7, "F"], [6, 6, "F"], [6, 5, "F"], [6, 4, "F"], [6, 3, "F"], [6, 2, "F"], [6, 1, "F"], [6, 0, "W"],
             [5, 8, "W"], [5, 7, "F"], [5, 6, "F"], [5, 5, "F"], [5, 4, "F"], [5, 3, "F"], [5, 2, "F"], [5, 1, "F"], [5, 0, "W"],
             [4, 8, "W"], [4, 7, "F"], [4, 6, "F"], [4, 5, "F"], [4, 4, "F"], [4, 3, "F"], [4, 2, "F"], [4, 1, "F"], [4, 0, "W"],
             [3, 8, "W"], [3, 7, "F"], [3, 6, "F"], [3, 5, "1"], [3, 4, "F"], [3, 3, "2"], [3, 2, "F"], [3, 1, "F"], [3, 0, "W"],
             [2, 8, "W"], [2, 7, "F"], [2, 6, "F"], [2, 5, "F"], [2, 4, "F"], [2, 3, "F"], [2, 2, "F"], [2, 1, "F"], [2, 0, "W"],
             [1, 8, "W"], [1, 7, "A"], [1, 6, "A"], [1, 5, "A"], [1, 4, "A"], [1, 3, "A"], [1, 2, "A"], [1, 1, "A"], [1, 0, "W"],
             [0, 8, "W"], [0, 7, "W"], [0, 6, "W"], [0, 5, "W"], [0, 4, "W"], [0, 3, "W"], [0, 2, "W"], [0, 1, "W"], [0, 0, "W"]]
    return board
end


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
    return out_array
end

def func_board_by_right_diag(board)
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
                out_array_indexes << a + b + c
                a = a + 9
            end
            start = start - 1
        else
            for b in start..8
                out_array << board[a + b + c]
                out_array_indexes << a + b + c
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

def play_made(board, player, losation) 

end


def print_board(board)
    wall = 0
    for i in board
        if (1..6).include? i[0]
            case i[2]
            when "F"
                print " O "
            when "A"
                print " O "
            when "W"
                if wall == 0
                    print " | "
                    wall = 1
                else
                    puts " | "
                    wall = 0
                end
            when "1"
                print " 1 ".red
            when "2"
                print " 2 ".green
            end
        end
       
    end
    print "   "
    for a in 1..7
        print " #{a} "
    end
    puts ""
end 







board = create_blank_board()
#while 1
    # player = 1
    # print "player #{player} token location :"
    # location = gets
    # play_made(board, player, location)
    print_board(board)


#end 



# board_by_row_forward = board.clone
# board_by_row_backward = board.clone.reverse()
# board_by_column = func_board_by_column(board)
# board_by_up_left_diag = func_board_by_left_diag(board)
# board_by_down_left_diag = board_by_up_left_diag.clone.reverse()
# board_by_up_right_diag = func_board_by_right_diag(board)
# board_by_down_right_diag = board_by_up_right_diag.clone.reverse()
