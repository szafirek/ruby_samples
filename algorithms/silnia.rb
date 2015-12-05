#!/usr/bin/env ruby -w

def factorial(x)
  if x > 1
    return factorial(x-1) * x
  else
    return 1
  end
end