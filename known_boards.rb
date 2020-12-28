def is_in_known_boards(board)
    answer = [false,0,0]
    if board == [[8, 0, "W",], [8, 1, "W"], [8, 2, "W"], [8, 3, "W"], [8, 4, "W"], [8, 5, "W"], [8, 6, "W"], [8, 7, "W"], [8, 8, "W"], 
                [7, 0, "W",], [7, 1, "W"], [7, 2, "W"], [7, 3, "W"], [7, 4, "W"], [7, 5, "W"], [7, 6, "W"], [7, 7, "W"], [7, 8, "W"],
                [6, 0, "W",], [6, 1, "F"], [6, 2, "F"], [6, 3, "F"], [6, 4, "F"], [6, 5, "F"], [6, 6, "F"], [6, 7, "F"], [6, 8, "W"],
                [5, 0, "W",], [5, 1, "F"], [5, 2, "F"], [5, 3, "F"], [5, 4, "F"], [5, 5, "F"], [5, 6, "F"], [5, 7, "F"], [5, 8, "W"],
                [4, 0, "W",], [4, 1, "F"], [4, 2, "F"], [4, 3, "F"], [4, 4, "F"], [4, 5, "F"], [4, 6, "F"], [4, 7, "F"], [4, 8, "W"],
                [3, 0, "W",], [3, 1, "F"], [3, 2, "F"], [3, 3, "F"], [3, 4, "F"], [3, 5, "F"], [3, 6, "F"], [3, 7, "F"], [3, 8, "W"],
                [2, 0, "W",], [2, 1, "F"], [2, 2, "F"], [2, 3, "F"], [2, 4, "F"], [2, 5, "F"], [2, 6, "F"], [2, 7, "F"], [2, 8, "W"],
                [1, 0, "W",], [1, 1, "A"], [1, 2, "A"], [1, 3, "A"], [1, 4, "A"], [1, 5, "A"], [1, 6, "A"], [1, 7, "A"], [1, 8, "W"],
                [0, 0, "W",], [0, 1, "W"], [0, 2, "W"], [0, 3, "W"], [0, 4, "W"], [0, 5, "W"], [0, 6, "W"], [0, 7, "W"], [0, 8, "W"]]
        answer = [true,4,1]
    end
    if board == [[8, 0, "W",], [8, 1, "W"], [8, 2, "W"], [8, 3, "W"], [8, 4, "W"], [8, 5, "W"], [8, 6, "W"], [8, 7, "W"], [8, 8, "W"], 
                [7, 0, "W",], [7, 1, "W"], [7, 2, "W"], [7, 3, "W"], [7, 4, "W"], [7, 5, "W"], [7, 6, "W"], [7, 7, "W"], [7, 8, "W"],
                [6, 0, "W",], [6, 1, "F"], [6, 2, "F"], [6, 3, "F"], [6, 4, "F"], [6, 5, "F"], [6, 6, "F"], [6, 7, "F"], [6, 8, "W"],
                [5, 0, "W",], [5, 1, "F"], [5, 2, "F"], [5, 3, "F"], [5, 4, "F"], [5, 5, "F"], [5, 6, "F"], [5, 7, "F"], [5, 8, "W"],
                [4, 0, "W",], [4, 1, "F"], [4, 2, "F"], [4, 3, "F"], [4, 4, "F"], [4, 5, "F"], [4, 6, "F"], [4, 7, "F"], [4, 8, "W"],
                [3, 0, "W",], [3, 1, "F"], [3, 2, "F"], [3, 3, "F"], [3, 4, "F"], [3, 5, "F"], [3, 6, "F"], [3, 7, "F"], [3, 8, "W"],
                [2, 0, "W",], [2, 1, "F"], [2, 2, "F"], [2, 3, "F"], [2, 4, "A"], [2, 5, "F"], [2, 6, "F"], [2, 7, "F"], [2, 8, "W"],
                [1, 0, "W",], [1, 1, "A"], [1, 2, "A"], [1, 3, "A"], [1, 4, "H"], [1, 5, "A"], [1, 6, "A"], [1, 7, "A"], [1, 8, "W"],
                [0, 0, "W",], [0, 1, "W"], [0, 2, "W"], [0, 3, "W"], [0, 4, "W"], [0, 5, "W"], [0, 6, "W"], [0, 7, "W"], [0, 8, "W"]]
        answer = [true,4,2]
    end
    if board == [[8, 0, "W",], [8, 1, "W"], [8, 2, "W"], [8, 3, "W"], [8, 4, "W"], [8, 5, "W"], [8, 6, "W"], [8, 7, "W"], [8, 8, "W"], 
                [7, 0, "W",], [7, 1, "W"], [7, 2, "W"], [7, 3, "W"], [7, 4, "W"], [7, 5, "W"], [7, 6, "W"], [7, 7, "W"], [7, 8, "W"],
                [6, 0, "W",], [6, 1, "F"], [6, 2, "F"], [6, 3, "F"], [6, 4, "F"], [6, 5, "F"], [6, 6, "F"], [6, 7, "F"], [6, 8, "W"],
                [5, 0, "W",], [5, 1, "F"], [5, 2, "F"], [5, 3, "F"], [5, 4, "F"], [5, 5, "F"], [5, 6, "F"], [5, 7, "F"], [5, 8, "W"],
                [4, 0, "W",], [4, 1, "F"], [4, 2, "F"], [4, 3, "F"], [4, 4, "A"], [4, 5, "F"], [4, 6, "F"], [4, 7, "F"], [4, 8, "W"],
                [3, 0, "W",], [3, 1, "F"], [3, 2, "F"], [3, 3, "F"], [3, 4, "H"], [3, 5, "F"], [3, 6, "F"], [3, 7, "F"], [3, 8, "W"],
                [2, 0, "W",], [2, 1, "F"], [2, 2, "F"], [2, 3, "F"], [2, 4, "C"], [2, 5, "F"], [2, 6, "F"], [2, 7, "F"], [2, 8, "W"],
                [1, 0, "W",], [1, 1, "A"], [1, 2, "A"], [1, 3, "A"], [1, 4, "H"], [1, 5, "A"], [1, 6, "A"], [1, 7, "A"], [1, 8, "W"],
                [0, 0, "W",], [0, 1, "W"], [0, 2, "W"], [0, 3, "W"], [0, 4, "W"], [0, 5, "W"], [0, 6, "W"], [0, 7, "W"], [0, 8, "W"]]
        answer = [true,4,4]
    end
    if board == [[8, 0, "W",], [8, 1, "W"], [8, 2, "W"], [8, 3, "W"], [8, 4, "W"], [8, 5, "W"], [8, 6, "W"], [8, 7, "W"], [8, 8, "W"], 
                [7, 0, "W",], [7, 1, "W"], [7, 2, "W"], [7, 3, "W"], [7, 4, "W"], [7, 5, "W"], [7, 6, "W"], [7, 7, "W"], [7, 8, "W"],
                [6, 0, "W",], [6, 1, "F"], [6, 2, "F"], [6, 3, "F"], [6, 4, "F"], [6, 5, "F"], [6, 6, "F"], [6, 7, "F"], [6, 8, "W"],
                [5, 0, "W",], [5, 1, "F"], [5, 2, "F"], [5, 3, "F"], [5, 4, "F"], [5, 5, "F"], [5, 6, "F"], [5, 7, "F"], [5, 8, "W"],
                [4, 0, "W",], [4, 1, "F"], [4, 2, "F"], [4, 3, "F"], [4, 4, "F"], [4, 5, "F"], [4, 6, "F"], [4, 7, "F"], [4, 8, "W"],
                [3, 0, "W",], [3, 1, "F"], [3, 2, "F"], [3, 3, "F"], [3, 4, "A"], [3, 5, "F"], [3, 6, "F"], [3, 7, "F"], [3, 8, "W"],
                [2, 0, "W",], [2, 1, "F"], [2, 2, "F"], [2, 3, "F"], [2, 4, "H"], [2, 5, "F"], [2, 6, "F"], [2, 7, "F"], [2, 8, "W"],
                [1, 0, "W",], [1, 1, "A"], [1, 2, "A"], [1, 3, "A"], [1, 4, "C"], [1, 5, "A"], [1, 6, "A"], [1, 7, "A"], [1, 8, "W"],
                [0, 0, "W",], [0, 1, "W"], [0, 2, "W"], [0, 3, "W"], [0, 4, "W"], [0, 5, "W"], [0, 6, "W"], [0, 7, "W"], [0, 8, "W"]]
        answer = [true,4,3]
    end
    return answer
end