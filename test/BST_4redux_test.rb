require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/BST_3redux.rb'
require './lib/node.rb'

class BinarySearchTreeTest < Minitest::Test

  def test_binary_search_tree_class
    tree = BinarySearchTree.new

    assert_instance_of BinarySearchTree, tree
  end

  def test_default_parent_node_is_nil
    tree = BinarySearchTree.new

    assert_equal nil, tree.parent_node
  end

  def test_insert_returns_parent_node_depth
    tree = BinarySearchTree.new

    assert_equal 0, tree.insert(70, "Shawshank Redemption")
  end

  def test_inserting_second_node_left_returns_current_depth
    tree = BinarySearchTree.new
    tree.insert(70, "Shawshank Redemption")
    assert_equal 1, tree.insert(50, "Tommy Boy")
  end

end
