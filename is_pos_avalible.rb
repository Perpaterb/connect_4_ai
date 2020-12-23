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