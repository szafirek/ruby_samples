#!/usr/bin/env ruby -w

def solution(s, p, q)
    result = []
    changes = {'A' => 1, 'C' => 2, 'G' => 3, 'T' => 4}
    length = s.length
    helper = Array.new(4) { Array.new(length,nil) }
    next_same = Array.new(4,-1)
    (length-1).downto(0) do |i|
        pos = changes[s[i]]-1
        next_same[pos] = i
        4.times do |j|
            helper[j][i] = next_same[j]
        end
    end
    (0...p.length).each do |i|
        if helper[0][p[i]] != -1 && helper[0][p[i]] <= q[i]
            result << 1
        elsif helper[1][p[i]] != -1 && helper[1][p[i]] <= q[i]
            result << 2
        elsif helper[2][p[i]] != -1 && helper[2][p[i]] <= q[i]
            result << 3
        else
            result << 4
        end
    end
    result
end
