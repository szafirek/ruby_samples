#!/usr/bin/env ruby -w

def solution(a)
	a.sort!
	[a[0] * a[1] * a[-1],a[-1] * a[-2] * a[-3]].max
end
