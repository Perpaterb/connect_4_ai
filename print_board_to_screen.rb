class String
    def red;            "\033[31m#{self}\033[0m" end
    def green;          "\033[32m#{self}\033[0m" end
end

def print_board(board)
    wall = 0
    for i in board
        if (1..6).include? i[0]
            case i[2]
            when "F"
                print " O "
            when "A"
                print " O "
            when "W"
                if wall == 0
                    print " | "
                    wall = 1
                else
                    puts " | "
                    wall = 0
                end
            when "1"
                print " 1 ".red
            when "2"
                print " 2 ".green
            end
        end
       
    end
    print "   "
    for a in 1..7
        print " #{a} "
    end
    puts ""
end 