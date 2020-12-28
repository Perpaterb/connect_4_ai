def test_a_board_for_score(board, total_scroe)
    score = 0
    array = []
    for i in board
        array << i[2]
    end 
    array = array.join
    


    if array.include? "HHHc"
        score += 300
    end
    if array.include? "HHcH"
        score += 300
    end
    if array.include? "HcHH"
        score += 300
    end
    if array.include? "cHHH"
        score += 300
    end
    # HHHA
    if array.include? "cCCA"
        score += 100
    end
    if array.include? "cCAC"
        score += 105
    end
    if array.include? "cACC"
        score += 105
    end
    if array.include? "AcCC"
        score += 100
    end
    if array.include? "CcCA"
        score += 100
    end
    if array.include? "CcAC"
        score += 105
    end
    if array.include? "CAcC"
        score += 105
    end
    if array.include? "ACcC"
        score += 100
    end
    if array.include? "CCcA"
        score += 100
    end
    if array.include? "CCAc"
        score += 105
    end
    if array.include? "CACc"
        score += 105
    end
    if array.include? "ACCc"
        score += 100
    end
    # CHHA
    if array.include? "cHHA"
        score += 140
    end
    if array.include? "AHHc"
        score += 145
    end
    # HHHF
    if array.include? "cCCF"
        score += 40
    end
    if array.include? "cCFC"
        score += 40
    end
    if array.include? "cFCC"
        score += 40
    end
    if array.include? "FcCC"
        score += 40
    end
    if array.include? "CcCF"
        score += 40
    end
    if array.include? "CcFC"
        score += 40
    end
    if array.include? "CFcC"
        score += 40
    end
    if array.include? "FCcC"
        score += 40
    end    
    if array.include? "CCcF"
        score += 40
    end
    if array.include? "CCFc"
        score += 40
    end
    if array.include? "CFCc"
        score += 40
    end
    if array.include? "FCCc"
        score += 40
    end
    # HHAA
    if array.include? "cCAA"
        score += 30
    end
    if array.include? "cAAC"
        score += 15
    end
    if array.include? "AAcC"
        score += 30
    end
    if array.include? "AcCA"
        score += 30
    end
    if array.include? "AcAC"
        score += 35
    end
    if array.include? "cACA"
        score += 35
    end
    if array.include? "CcAA"
        score += 30
    end
    if array.include? "CAAc"
        score += 15
    end
    if array.include? "AACc"
        score += 30
    end
    if array.include? "ACcA"
        score += 30
    end
    if array.include? "ACAc"
        score += 35
    end
    if array.include? "CAcA"
        score += 35
    end
    # HHFA
    if array.include? "cCAF"
        score += 25
    end
    if array.include? "cCFA"
        score += 25
    end
    if array.include? "cFAC"
        score += 25
    end
    if array.include? "cAFC"
        score += 25
    end
    if array.include? "FAcC"
        score += 25
    end
    if array.include? "AFcC"
        score += 25
    end
    if array.include? "FcAC"
        score += 25
    end
    if array.include? "AcFC"
        score += 25
    end
    if array.include? "cFCA"
        score += 25
    end
    if array.include? "cACF"
        score += 25
    end
    if array.include? "AcCF"
        score += 25
    end
    if array.include? "FcCA"
        score += 25
    end
    if array.include? "CcAF"
        score += 25
    end
    if array.include? "CcFA"
        score += 25
    end
    if array.include? "CFAc"
        score += 25
    end
    if array.include? "CAFc"
        score += 25
    end
    if array.include? "FACc"
        score += 25
    end
    if array.include? "AFCc"
        score += 25
    end
    if array.include? "FCAc"
        score += 25
    end
    if array.include? "ACFc"
        score += 25
    end
    if array.include? "CFcA"
        score += 25
    end
    if array.include? "CAcF"
        score += 25
    end
    if array.include? "ACcF"
        score += 25
    end
    if array.include? "FCcA"
        score += 25
    end
    # HHFF
    if array.include? "cCFF"
        score += 10
    end
    if array.include? "cFFC"
        score += 10
    end
    if array.include? "FFcC"
        score += 10
    end
    if array.include? "FcCF"
        score += 10
    end
    if array.include? "CcFF"
        score += 10
    end
    if array.include? "CFFc"
        score += 10
    end
    if array.include? "FFCc"
        score += 10
    end
    if array.include? "FCcF"
        score += 10
    end
    # HAFF
    if array.include? "cAFF"
        score += 3
    end
    if array.include? "FFAc"
        score += 3
    end
    if array.include? "FAcF"
        score += 3
    end
    if array.include? "FcAF"
        score += 3
    end
    if array.include? "cAFF"
        score += 3
    end
    if array.include? "FFAc"
        score += 3
    end
    if array.include? "FAcF"
        score += 3
    end
    if array.include? "FcAF"
        score += 3
    end
    # CHAF
    if array.include? "HcAF"
        score += 4
    end
    if array.include? "FAcH"
        score += 4
    end
    # CCHA
    if array.include? "HHcA"
        score += 6
    end
    if array.include? "HHAc"
        score += 6
    end
    if array.include? "HcAH"
        score += 6
    end
    if array.include? "HAcH"
        score += 6
    end
    if array.include? "cAHH"
        score += 6
    end
    if array.include? "AcHH"
        score += 6
    end
    if array.include? "cHAH"
        score += 6
    end
    if array.include? "AHcH"
        score += 6
    end
    if array.include? "HcHA"
        score += 6
    end
    if array.include? "HAHc"
        score += 6
    end


    # HH
    if array.include? "cC"
        score += 2
    end
    # HA
    if array.include? "cA"
        score += 1
    end
    if array.include? "Ac"
        score += 1
    end
    if array.include? "AAc"
        score += 2
    end
    # HF
    if array.include? "cF"
        score += 1
    end
    if array.include? "Fc"
        score += 1
    end







    # block win
    if array.include? "CCCh"
        score -= 300
    end
    if array.include? "CChC"
        score -= 300
    end
    if array.include? "ChCC"
        score -= 300
    end
    if array.include? "hCCC"
        score -= 300
    end
    # HHHA
    if array.include? "hHHA"
        score -= 100
    end
    if array.include? "hHAH"
        score -= 105
    end
    if array.include? "hAHH"
        score -= 105
    end
    if array.include? "AhHH"
        score -= 100
    end
    if array.include? "HhHA"
        score -= 100
    end
    if array.include? "HhAH"
        score -= 105
    end
    if array.include? "HAhH"
        score -= 105
    end
    if array.include? "AHhH"
        score -= 100
    end
    if array.include? "HHhA"
        score -= 100
    end
    if array.include? "HHAh"
        score -= 105
    end
    if array.include? "HAHh"
        score -= 105
    end
    if array.include? "AHHh"
        score -= 100
    end
    # HHHF
    if array.include? "hHHF"
        score -= 40
    end
    if array.include? "hHFH"
        score -= 40
    end
    if array.include? "hFHH"
        score -= 40
    end
    if array.include? "FhHH"
        score -= 40
    end
    if array.include? "HhHF"
        score -= 40
    end
    if array.include? "HhFH"
        score -= 40
    end
    if array.include? "HFhH"
        score -= 40
    end
    if array.include? "FHhH"
        score -= 40
    end
    if array.include? "HHhF"
        score -= 40
    end
    if array.include? "HHFh"
        score -= 40
    end
    if array.include? "HFHh"
        score -= 40
    end
    if array.include? "FHHh"
        score -= 40
    end
    # HHAA
    if array.include? "hHAA"
        score -= 30
    end
    if array.include? "hAAH"
        score -= 15
    end
    if array.include? "AAhH"
        score -= 30
    end
    if array.include? "AhHA"
        score -= 30
    end
    if array.include? "AhAH"
        score -= 35
    end
    if array.include? "hAHA"
        score -= 35
    end
    if array.include? "HhAA"
        score -= 30
    end
    if array.include? "HAAh"
        score -= 15
    end
    if array.include? "AAHh"
        score -= 30
    end
    if array.include? "AHhA"
        score -= 30
    end
    if array.include? "AHAh"
        score -= 35
    end
    if array.include? "HAhA"
        score -= 35
    end
    # HHFA
    if array.include? "hHAF"
        score -= 25
    end
    if array.include? "hHFA"
        score -= 25
    end
    if array.include? "hFAH"
        score -= 25
    end
    if array.include? "hAFH"
        score -= 25
    end
    if array.include? "FAhH"
        score -= 25
    end
    if array.include? "AFhH"
        score -= 25
    end
    if array.include? "FhAH"
        score -= 25
    end
    if array.include? "AhFH"
        score -= 25
    end
    if array.include? "hFHA"
        score -= 25
    end
    if array.include? "hAHF"
        score -= 25
    end
    if array.include? "AhHF"
        score -= 25
    end
    if array.include? "FhHA"
        score -= 25
    end
    if array.include? "HhAF"
        score -= 25
    end
    if array.include? "HhFA"
        score -= 25
    end
    if array.include? "HFAh"
        score -= 25
    end
    if array.include? "HAFh"
        score -= 25
    end
    if array.include? "FAHh"
        score -= 25
    end
    if array.include? "AFHh"
        score -= 25
    end
    if array.include? "FHAh"
        score -= 25
    end
    if array.include? "AHFh"
        score -= 25
    end
    if array.include? "HFhA"
        score -= 25
    end
    if array.include? "HAhF"
        score -= 25
    end
    if array.include? "AHhF"
        score -= 25
    end
    if array.include? "FHhA"
        score -= 25
    end
    # HHFF
    if array.include? "hHFF"
        score -= 10
    end
    if array.include? "hFFH"
        score -= 10
    end
    if array.include? "FFhH"
        score -= 10
    end
    if array.include? "FhHF"
        score -= 10
    end
    if array.include? "HhFF"
        score -= 10
    end
    if array.include? "HFFh"
        score -= 10
    end
    if array.include? "FFHh"
        score -= 10
    end
    if array.include? "FHhF"
        score -= 10
    end
    # HAFF
    if array.include? "hAFF"
        score -= 3
    end
    if array.include? "FFAh"
        score -= 3
    end
    if array.include? "FAhF"
        score -= 3
    end
    if array.include? "FhAF"
        score -= 3
    end
    # CHAF
    if array.include? "ChAF"
        score -= 4
    end
    if array.include? "FAhC"
        score -= 4
    end
    # CCHA
    if array.include? "CChA"
        score -= 5
    end
    if array.include? "CCAH"
        score -= 5
    end
    if array.include? "ChAC"
        score -= 5
    end
    if array.include? "CAhC"
        score -= 5
    end
    if array.include? "hCAC"
        score -= 5
    end
    if array.include? "AChC"
        score -= 5
    end
    if array.include? "hACC"
        score -= 5
    end
    if array.include? "AhCC"
        score -= 5
    end
    # CCHF
    if array.include? "CChF"
        score -= 4
    end
    if array.include? "CCFH"
        score -= 4
    end
    if array.include? "ChFC"
        score -= 4
    end
    if array.include? "CFhC"
        score -= 4
    end
    if array.include? "hCFC"
        score -= 4
    end
    if array.include? "FChC"
        score -= 4
    end
    if array.include? "hFCC"
        score -= 4
    end
    if array.include? "FhCC"
        score -= 4
    end


    # HH
    if array.include? "hH"
        score -= 2
    end
    if array.include? "Hh"
        score -= 2
    end
    # HA
    if array.include? "hA"
        score -= 1
    end
    if array.include? "Ah"
        score -= 1
    end
    # HF
    if array.include? "hF"
        score -= 1
    end
    if array.include? "Fh"
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