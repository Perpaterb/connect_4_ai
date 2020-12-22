require "./create_blank_board.rb"
require "./rotate_board2.rb"
require "./print_board_to_screen.rb"
require "./test_for_win.rb"
require "./test_for_next_turn_win"
require "./minimax.rb"


board = create_blank_board()
print_board(board)
p win = test_for_a_win(board)
p win_next_turn = test_for_next_turn_win(board, 1)

