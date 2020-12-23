score = {
    1 => -1,
    2 => 1,
    3 => 0 
}


def minimax(board, tree_depth, alpha, beta, maximizingPlayer)
    return 1
    
    
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

