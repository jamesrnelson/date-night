require 'pry'

class Node
  attr_reader :score, :movie_title
  attr_accessor :left, :right, :depth

  def initialize(score, movie_title)
    @score = score
    @movie_title = movie_title
    @left = nil;
    @right = nil;
    @depth = 0
  end

end
