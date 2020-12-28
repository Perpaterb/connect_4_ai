def move_made_update_board(p_move, turn_of, board, row)
    i = board.find_index([row, p_move, "A"])
    if turn_of == "computer"
        board[i] = [row, p_move, "C"]
    else
        board[i] = [row, p_move, "H"]
    end
    new_a = board.find_index([row+1, p_move, "F"])

    if new_a == nil
    else
        board[new_a] = [row+1, p_move, "A"]
    end
    return board
end