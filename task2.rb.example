def forwardShift(a,b)
    sarr = a.split('')
    n = sarr.size
    for i in 0..n-1
        sarr << sarr[0]
        sarr.shift()
        if sarr.join('')==b
            return i+1
        end
    end
    return -1
end

def backwardShift(a,b)
    sarr = a.split('')
    n = sarr.size
    for i in 0..n-1
        sarr = [sarr[n-1]] + sarr
        sarr.pop
        if sarr.join('')==b
            return i+1
        end
    end
    return -1
end

def minShift(a,b)
    if a.length != b.length
        return -1
    end
    
    if a==b 
        return 0
    end
    fShift = forwardShift(a,b)
    bShift = backwardShift(a,b)
    return fShift < bShift ? fShift : bShift
end

puts minShift( ARGV[0], ARGV[1])
