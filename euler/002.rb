#!/usr/bin/env ruby -w

def solution
	fib = [1,1]
	fib << (fib[-1] + fib[-2]) while fib[-1] < 4_000_000
	fib.select(&:even?).reduce(:+)
end

puts solution