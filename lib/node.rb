require 'pry'

class Node
  attr_reader :value, :movie_title
  attr_accessor :left, :right, :depth

  def initialize(value, movie_title, depth=0)
    @value = value
    @movie_title = movie_title
    @left = nil
    @right = nil
    @depth = depth
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
