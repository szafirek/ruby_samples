#!/usr/bin/env ruby -w

def pierwsza?(n)
  return false if n < 2
  i = 2
  while i*i <= n
    return false if n % i == 0
    i += 1
  end
  true
end