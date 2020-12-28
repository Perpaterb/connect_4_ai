def test_a_board_for_score(board, total_scroe)
    score = 0
    array = []
    for i in board
        array << i[2]
    end 
    array = array.join
    # block win
    if array.include? "HHHC"
        score += 300
    end
    if array.include? "HHCH"
        score += 300
    end
    if array.include? "HCHH"
        score += 300
    end
    if array.include? "CHHH"
        score += 300
    end
    # HHHA
    if array.include? "CCCA"
        score += 100
    end
    if array.include? "CCAC"
        score += 105
    end
    if array.include? "CACC"
        score += 105
    end
    if array.include? "ACCC"
        score += 100
    end
    # CHHA
    if array.include? "CHHA"
        score += 140
    end
    if array.include? "AHHC"
        score += 145
    end
    # HHHF
    if array.include? "CCCF"
        score += 40
    end
    if array.include? "CCFC"
        score += 40
    end
    if array.include? "CFCC"
        score += 40
    end
    if array.include? "FCCC"
        score += 40
    end
    # HHAA
    if array.include? "CCAA"
        score += 30
    end
    if array.include? "CAAC"
        score += 15
    end
    if array.include? "AACC"
        score += 30
    end
    if array.include? "ACCA"
        score += 30
    end
    if array.include? "ACAC"
        score += 35
    end
    if array.include? "CACA"
        score += 35
    end
    # HHFA
    if array.include? "CCAF"
        score += 25
    end
    if array.include? "CCFA"
        score += 25
    end
    if array.include? "CFAC"
        score += 25
    end
    if array.include? "CAFC"
        score += 25
    end
    if array.include? "FACC"
        score += 25
    end
    if array.include? "AFCC"
        score += 25
    end
    if array.include? "FCAC"
        score += 25
    end
    if array.include? "ACFC"
        score += 25
    end
    if array.include? "CFCA"
        score += 25
    end
    if array.include? "CACF"
        score += 25
    end
    if array.include? "ACCF"
        score += 25
    end
    if array.include? "FCCA"
        score += 25
    end
    # HHFF
    if array.include? "CCFF"
        score += 10
    end
    if array.include? "CFFC"
        score += 10
    end
    if array.include? "FFCC"
        score += 10
    end
    if array.include? "FCCF"
        score += 10
    end
    # HAFF
    if array.include? "CAFF"
        score += 3
    end
    if array.include? "FFAC"
        score += 3
    end
    if array.include? "FACF"
        score += 3
    end
    if array.include? "FCAF"
        score += 3
    end
    # CHAF
    if array.include? "HCAF"
        score += 4
    end
    if array.include? "FACH"
        score += 4
    end
    # CCHA or F
    if array.include? "HHCA"
        score += 6
    end
    if array.include? "HHCF"
        score += 5
    end
    if array.include? "HCAH"
        score += 6
    end
    if array.include? "HACH"
        score += 6
    end
    if array.include? "HCFH"
        score += 2
    end
    if array.include? "HFCH"
        score += 2
    end

    # CCHAA
    if array.include? "HHCAAA"
        score += 6
    end
    if array.include? "AACAHH"
        score += 6
    end
    if array.include? "HHAAAC"
        score += 6
    end
    if array.include? "CAAAHH"
        score += 6
    end
    # HH
    if array.include? "CC"
        score += 2
    end
    # HA
    if array.include? "CA"
        score += 1
    end
    if array.include? "AC"
        score += 1
    end
    # HF
    if array.include? "CA"
        score += 1
    end
    if array.include? "AC"
        score += 1
    end




    # block win
    if array.include? "HHHC"
        score -= 300
    end
    if array.include? "CCHC"
        score -= 300
    end
    if array.include? "CHCC"
        score -= 300
    end
    if array.include? "HCCC"
        score -= 300
    end
    # HHHA
    if array.include? "HHHA"
        score -= 100
    end
    if array.include? "HHAH"
        score -= 105
    end
    if array.include? "HAHH"
        score -= 105
    end
    if array.include? "AHHH"
        score -= 100
    end
    # HHHF
    if array.include? "HHHF"
        score -= 40
    end
    if array.include? "HHFH"
        score -= 40
    end
    if array.include? "HFHH"
        score -= 40
    end
    if array.include? "FHHH"
        score -= 40
    end
    # HHAA
    if array.include? "HHAA"
        score -= 30
    end
    if array.include? "HAAH"
        score -= 15
    end
    if array.include? "AAHH"
        score -= 30
    end
    if array.include? "AHHA"
        score -= 30
    end
    if array.include? "AHAH"
        score -= 35
    end
    if array.include? "HAHA"
        score -= 35
    end
    # HHFA
    if array.include? "HHAF"
        score -= 25
    end
    if array.include? "HHFA"
        score -= 25
    end
    if array.include? "HFAH"
        score -= 25
    end
    if array.include? "HAFH"
        score -= 25
    end
    if array.include? "FAHH"
        score -= 25
    end
    if array.include? "AFHH"
        score -= 25
    end
    if array.include? "FHAH"
        score -= 25
    end
    if array.include? "AHFH"
        score -= 25
    end
    if array.include? "HFHA"
        score -= 25
    end
    if array.include? "HAHF"
        score -= 25
    end
    if array.include? "AHHF"
        score -= 25
    end
    if array.include? "FHHA"
        score -= 25
    end
    # HHFF
    if array.include? "HHFF"
        score -= 10
    end
    if array.include? "HFFH"
        score -= 10
    end
    if array.include? "FFHH"
        score -= 10
    end
    if array.include? "FHHF"
        score -= 10
    end
    # HAFF
    if array.include? "HAFF"
        score -= 3
    end
    if array.include? "FFAH"
        score -= 3
    end
    if array.include? "FAHF"
        score -= 3
    end
    if array.include? "FHAF"
        score -= 3
    end
    # CHAF
    if array.include? "CHAF"
        score -= 4
    end
    if array.include? "FAHC"
        score -= 4
    end
    # CCHA or F
    if array.include? "CCHA"
        score -= 5
    end
    if array.include? "CCHF"
        score -= 5
    end
    if array.include? "CHAC"
        score -= 5
    end
    if array.include? "CAHC"
        score -= 5
    end
    if array.include? "CHFC"
        score -= 2
    end
    if array.include? "CFHC"
        score -= 2
    end

    # CCHAA
    if array.include? "CCHAAA"
        score -= 6
    end
    if array.include? "AAHACC"
        score -= 6
    end
    if array.include? "CCAAAH"
        score -= 6
    end
    if array.include? "HAAACC"
        score -= 6
    end
    # HH
    if array.include? "HH"
        score -= 2
    end
    # HA
    if array.include? "HA"
        score -= 1
    end
    if array.include? "AH"
        score -= 1
    end
    # HF
    if array.include? "HF"
        score -= 1
    end
    if array.include? "FH"
        score -= 1
    end

    total_scroe += score
    return total_scroe 
end

def test_for_score(board)
    answer = 0
    for i in 0..3
        case i
        when 0
            board_to_test = board.clone
        when 1
            board_to_test = func_board_by_column(board.clone)
        when 2
            board_to_test = func_board_by_left_diag(board.clone)
        when 3
            board_to_test = func_board_by_right_diag(board.clone)
        end
        answer += test_a_board_for_score(board_to_test, answer) 
    end
    return answer
end