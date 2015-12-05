#!/usr/bin/env ruby -w

def sieve(n)
  nums = [true] * (n+1)
  nums[0] = nums[1] = false
  i = 2
  while i*i <= n
    k = i*i if nums[i]
    while k <= n
      nums[k] = false
      k += i
    end
    i += 1
  end
  return  nums.each_with_index.map { |x, i| i if x }.compact
end