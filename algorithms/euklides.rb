#!/usr/bin/env ruby -w

def nwd(a, b)
  while a != b
    if a > b
      max, min = a, b
    else
      max, min = b, a
    end
    a = max - min
    b = min
  end
  return a
end