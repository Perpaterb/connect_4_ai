def minimax(position, depth, alpha, beta, maximizingPlayer)
    if depth == 0
        return #evaluation of position
    
    if maximizingPlayer
        maxEval = -99999
        for each child of position
            evalate = minimax(child, depth-1, alpha, beta, false)
            maxEval = max of (maxEval, evalate)
            alpha = max of (alpha, evalate)
            if beta <= alpha
                break
            end
        end
        return maxEval
    else
        minEval = 99999
        for each child of position
            evalate = minimax(child, depth-1, alpha, beta, true)
            mixEval = mix of (mixEval, evalate)
            beta = min of (beta, evalate)
            if beta <= alpha
                break
            end
        end
        return mixEval

    
    
    
    end


