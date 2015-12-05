#!/usr/bin/env ruby -w

def fib_i(n)
  a, b = 0, 1
  for i in 0...n
    a, b = b,  a+b
  end
  return a
end

def fib_r(n)
  return n if n <= 1
  fib_r(n-1) + fib_r(n-2)
end