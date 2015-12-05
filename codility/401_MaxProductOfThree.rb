#!/usr/bin/env ruby -w

### Lesson 4: Sorting
### Exercise 01: MaxProductOfThree

def solution(a)
	a.sort!
	[a[0] * a[1] * a[-1],a[-1] * a[-2] * a[-3]].max
end
