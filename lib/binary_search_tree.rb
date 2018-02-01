require './lib/node.rb'
require 'pry'

class BinarySearchTree
  attr_accessor :root_node, :score

  def initialize()
    @root_node = nil
  end

  def move_left
    if root_node.left.nil?
      current_node = Node.new(score, movie_title)
      root_node.left = current_node 
      current_node.depth += 1
    else
      root_node.left.insert(score, movie_title)
      root_node.depth += 1
    end
  end

  def move_right
    if root_node.right.nil?
      root_node.right = Node.new(score_movie_title)
      root_node.depth
    else
      root_node.right.insert(score, movie_title)
      root_node.depth += 1
    end
  end

  def insert(score, movie_title)
    if @root_node.nil?
      root_node = Node.new(score, movie_title)
      root_node.depth
    elsif score <= root_node.score
      root_node.move_left
    elsif score > root_node.score
      root_node.move_right
    end
  end

end
# tree = BinarySearchTree.new
# binding.pry
# tree.insert(70, "Shawshank Redemption")
