require './lib/node'
require 'pry'

class BinarySearchTree
  attr_accessor :parent_node, :current_node

  def initialize()
    @parent_node = nil
    @current_node = nil
  end

  def insert(value, movie_title)
    if parent_node == nil
      parent_node = Node.new(value, movie_title)
    else
      current_node = Node.new(value, movie_title)
      compare_nodes(current_node, parent_node)
    end
  end

  def compare_nodes(current_node, parent_node)
    if current_node.value <= parent_node.value
      move_left(current_node, parent_node)
    elsif current_node.value > parent_node.value
      move_right(current_node, parent_node)
    end
  end

  def move_left(current_node, parent_node)
    if parent_node.left.nil?
      current_node = parent_node.left
    else compare_nodes(current_node, parent_node)
    end
  end

  def move_right(current_node, parent_node)
    if parent_node.right.nil?
      current_node = parent.node.right
      current_node.depth
    else compare_nodes(current_node, parent_node)
    end
  end
end


tree = BinarySearchTree.new
binding.pry
tree.insert(70, "Shawshank Redemption")
