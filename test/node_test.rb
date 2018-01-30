require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node.rb'

class NodeTest < Minitest::Test
  def test_node_class
    node = Node.new(70, "Shawshank Redemption")
    assert_instance_of Node, node
  end

  def test_node_left
    node = Node.new(70, "Shawshank Redemption")
    assert_equal nil, node.left
  end

  def test_node_right
    node = Node.new(70, "Shawshank Redemption")
    assert_equal nil, node.right
  end

  def test_default_depth
    node = Node.new(70, "Shawshank Redemption")
    assert_equal 0, node.depth 
  end

end
