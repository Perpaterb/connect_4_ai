def is_pos_avalible(player_move, board)
    avalible = [0,0]
    all_As = board.select { |element| element.include?("A")}
    all_As = all_As.select{ |element| element[1] == player_move}
    length = all_As.select{ |element| element[1] == player_move}.length()
    avalible[0] = length
    if length == 1
        a = all_As[0]
        avalible[1] = a[0]
    end
    return avalible
end

def move_made_update_board(p_move, turn_of, board, row)
    i = board.find_index([row, p_move, "A"])
    p i 
    p board 
    if turn_of == "computer"
        board[i] = [row, p_move, "C"]
    else
        board[i] = [row, p_move, "H"]
    end
    p board 
    new_a = board.find_index([row+1, p_move, "F"])
    if new_a == nil
    else
        board[new_a] = [row+1, p_move, "A"]
    end
    p board 
end