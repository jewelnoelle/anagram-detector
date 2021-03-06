# Your code goes here!
require 'pry'

class Anagram
    def initialize(word)
        @word = word
    end

    attr_accessor :word

    def match(array)
        array.select do |possible_anagram|
            poss_an = possible_anagram.split(//)
            poss_an.sort == word.split(//).sort
        end
    end
end