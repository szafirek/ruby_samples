#!/usr/bin/env ruby -w

class Game
	def initialize(stdin,stdout)
		@stdin = stdin
		@stdout = stdout
		@sentence = get_sentence
		@patterns = get_patterns
		@choices = []
	end

	def play
		@stdout.puts "Hello to the Mad Libs!"
		@patterns.each do |pattern|
			@stdout.puts "Give me #{pattern[2..-3]}."
			@sentence.sub! pattern, @stdin.gets.chomp
		end
		@stdout.puts @sentence
	end

	private
		def get_sentence
			sentences = []
			File.open('../madlibs.txt','r').each { |line| sentences << line }
			sentences[rand(sentences.length)]
		end

		def get_patterns
			@sentence.scan(/\(\(\w*[\s{0,1}\w*]{0,}\)\)/)
		end
end