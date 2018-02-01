require './lib/node'
require 'pry'

class BinarySearchTree
  attr_accessor :parent_node, :current_node

  def initialize()
    @parent_node = nil
    @current_node = nil
  end

  def insert(value, movie_title, depth=0)
    if parent_node.nil?
      parent_node = Node.new(value, movie_title, depth)
      parent_node.depth = depth
    elsif value <= parent_node.value
      current_node = Node.new(value, movie_title)
      if parent_node.left.nil?
        parent_node.left = current_node
        current_node.depth += 1
      else insert(value, movie_title, depth+=1)
      end
    elsif value > parent_node.value
      current_node = Node.new(value, movie_title)
      if parent_node.right.nil?
        parent_node.right = current_node
        current_node.depth += 1
      else insert(value, movie_title, depth+=1)
      end
    end
  end

#   def compare_nodes(current_node, parent_node)
#     if current_node.value <= parent_node.value
#       move_left(current_node, parent_node)
#     elsif current_node.value > parent_node.value
#       move_right(current_node, parent_node)
#     end
#   end
#
#   def move_left(current_node, parent_node)
#     if parent_node.left.nil?
#       current_node = parent_node.left
#     else compare_nodes(current_node, parent_node)
#     end
#   end
#
#   def move_right(current_node, parent_node)
#     if parent_node.right.nil?
#       current_node = parent.node.right
#       current_node.depth
#     else compare_nodes(current_node, parent_node)
#     end
#   end
end
