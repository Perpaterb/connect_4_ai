require "./test_for_score.rb"
require "./is_pos_avalible.rb"
require "./move_made_update_board.rb"
require "./test_for_win.rb"

def minimax(board, tree_depth, alpha, beta, maximizingPlayer)
    win_Q = test_for_a_win(board)
    if win_Q[0] == true
        case win_Q[1]
        when 1
            score = -1.0/0.0
        when 2
            score = +1.0/0.0 
        when 3
            score = 0
        end
        return score
    end
    
    if tree_depth == 0
        score = test_for_score(board)
        p score
        return score
    end
    
    if maximizingPlayer == true
        maxEval = -1.0/0.0
        for i in 1..7
            avalible = is_pos_avalible(i, board.clone)
            if avalible[0] == 1
                move_row = avalible[1]
                board_for_score = move_made_update_board(i, "computer", board, move_row)
                score = minimax(board_for_score, tree_depth-1, alpha, beta, false)
                maxEval = [maxEval, score].max
                alpha = [alpha, score].max
                if beta <= alpha
                    break
                end
            end
        end
        return maxEval
    else
        minEval = +1.0/0.0
        for i in 1..7
            avalible = is_pos_avalible(i, board.clone)
            if avalible[0] == 1
                move_row = avalible[1]
                board_for_score = move_made_update_board(i, "human", board, move_row)
                score = minimax(board_for_score, tree_depth-1, alpha, beta, true)
                minEval = [minEval, score].min
                alpha = [alpha, score].min
                if beta <= alpha
                    break
                end
            end
        end 
        return minEval
    end



    #score = test_for_score(board)
    # if tree_depth == 0
    #     return #evaluation of board
    
    # if maximizingPlayer == true
    #     maxEval = -99999
    #     for each child of board
    #         evaluate = minimax(child, tree_depth-1, alpha, beta, false)
    #         maxEval = [maxEval, evaluate].max
    #         alpha = [alpha, evaluate].max
    #         if beta <= alpha
    #             break
    #         end
    #     end
    #     return maxEval
    # else
    #     minEval = 99999
    #     for each child of board
    #         evaluate = minimax(child, tree_depth-1, alpha, beta, true)
    #         mixEval = [minEval, evaluate].min
    #         beta = [beta, evaluate].min
    #         if beta <= alpha
    #             break
    #         end
    #     end
    #     return mixEval
    
    # end
end

