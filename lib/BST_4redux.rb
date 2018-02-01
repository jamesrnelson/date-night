require './lib/node'
require 'pry'

class BinarySearchTree
  attr_accessor :parent_node

  def initialize()
    @parent_node = parent_node

  end

  def insert(self, data)

  end

end

array_of_data = []
def insert(score, movie_title)
  received_array = [score, movie_title]
  array_of_data << received_array

  if !array_of_data.empty?
    received_array
end

class Node
  attr_accessor :left, :right
  attr_reader :val
  def initialize(val)
    @val = val
  end
end

def pre_order(node)
  return [] if node.nil?
  results = []
  results << node.val
  results.concat pre_order(node.left)
  results.concat pre_order(node.right)
  results
end
