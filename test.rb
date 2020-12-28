arr = "HHHC".chars.permutation.to_a
answer = []
for i in arr 
    if answer.include?(i)
    else
        answer << i
    end
end
p answer