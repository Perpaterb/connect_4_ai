# def minimax(position, depth, alpha, beta, maximizingPlayer)
#     if depth == 0
#         return #evaluation of position
    
#     if maximizingPlayer == true
#         maxEval = -99999
#         for each child of position
#             evaluate = minimax(child, depth-1, alpha, beta, false)
#             maxEval = [maxEval, evaluate].max
#             alpha = [alpha, evaluate].max
#             if beta <= alpha
#                 break
#             end
#         end
#         return maxEval
#     else
#         minEval = 99999
#         for each child of position
#             evaluate = minimax(child, depth-1, alpha, beta, true)
#             mixEval = [minEval, evaluate].min
#             beta = [beta, evaluate].min
#             if beta <= alpha
#                 break
#             end
#         end
#         return mixEval
    
#     end
# end

