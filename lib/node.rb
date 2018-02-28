require 'pry'

class Node
  attr_reader :score, :movie_title
  attr_accessor :left, :right

  def initialize(score, movie_title)
    @score = score
    @movie_title = movie_title
    @left = nil
    @right = nil
  end

  # def move_left
  #   if @root_node.left.nil?
  #     @root_node.left = @current_node
  #     @current_node.depth
  #   else
  #     @root_node.left.insert(score, movie_title)
  #   end
  # end
  #
  # def move_right
  #   if @root_node.right.nil?
  #     @root_node.right = @current_node
  #     @current_node.depth
  #   else
  #     @root_node.right.insert(score, movie_title)
  #   end
  # end

  # def insert(new_score, new_movie, depth=0)
  #   if new_score <= @score
  #     @left.nil? ? @left = Node.new(new_score, new_movie) : @left.insert(new_score, new_movie)
  #   elsif new_score > @score
  #     @right.nil? ? @right = Node.new(new_score, new_movie) : @right.insert(new_score, new_movie)
  #   end
  #
  # end
end
