require './lib/node.rb'
require 'pry'

class BinarySearchTree
  attr_accessor :root_node, :current_node, :score

  def initialize()
    @root_node = nil
    @current_node = current_node

  end

  def insert(score, movie_title)
    if @root_node.nil?
      @root_node = Node.new(score, movie_title)
      @root_node.depth
    else @current_node = Node.new(score, movie_title)
      @current_node.depth += 1
      if @current_node.score <= @root_node.score
        @current_node.move_left
      else
        @current_node.move_right
      end
    end
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
end

# tree = BinarySearchTree.new
# binding.pry
# tree.insert(70, "Shawshank Redemption")
