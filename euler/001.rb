#!/usr/bin/env ruby -w

def sum(first,last,n)
	(first+last)*0.5*n
end

def solution
	(sum(3,999,999/3) + sum(5,995,995/5) - sum(15,990,990/15)).to_i
end

puts solution