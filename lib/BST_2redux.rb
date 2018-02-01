require './lib/node.rb'
require 'pry'

class BinarySearchTree
  attr_accessor :root_node,

  def initialize()
    @root_node = nil
  end

  def insert(score, movie_title, depth=0)
    if root_node.nil?
      root_node = Node.new(score, movie_title)
      root_node.depth
    else
      compare(current_node, root_node)
    end
  end

  def compare(current_node, root_node, depth)
    depth += 1
    if current_node.score <= root_node.score
      current_node = root_node
      move_left
    elsif current_node.score > root_node.score
      current_node = root_node
      move_right
    end
  end



  def move_left
    if root_node.left.nil?
      current_node = Node.new(score, movie_title, depth)
      root_node.left = current_node
      current_node.depth
    else
      compare(current_node, root_node)
    end
  end

  def move_right
    if root_node.right.nil?
      root_node.right = current_node
    else
      compare(current_node, root_node)
    end
  end
end


tree = BinarySearchTree.new
binding.pry
tree.insert(70, "Shawshank Redemption")
