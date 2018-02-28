require './lib/node.rb'
require 'pry'

class BinarySearchTree
  attr_accessor :root_node

  def initialize()
    @root_node = nil
  end

  def insert(score, movie_title)
    # binding.pry
    node_to_insert = Node.new(score, movie_title)
    if @root_node.nil?
      @root_node = node_to_insert
      0
    else
      compare(node_to_insert, root_node, 0)
    end
  end

  def compare(node_to_insert, current_node, depth)
    # binding.pry
    depth += 1
    if node_to_insert.score <= current_node.score
      move_left(node_to_insert, current_node, depth)
    else
      move_right(node_to_insert, current_node, depth)
    end
  end

  def move_left(node_to_insert, current_node, depth)
    # binding.pry
    if current_node.left.nil?
      current_node.left = node_to_insert
      depth

    else
      compare(node_to_insert, current_node.left, depth)
    end
  end

  def move_right(node_to_insert, current_node, depth)
    if current_node.right.nil?
      current_node.right = node_to_insert
      depth
    else
      compare(node_to_insert, current_node.right, depth)
    end
  end
end
#
#
# tree = BinarySearchTree.new
# binding.pry
# tree.insert(70, "Shawshank Redemption")
