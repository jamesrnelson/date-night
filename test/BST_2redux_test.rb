require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/BST_2redux.rb'

class BinarySearchTreeTest < Minitest::Test
  def test_binary_search_tree_class
    tree = BinarySearchTree.new
    assert_instance_of BinarySearchTree, tree
  end

  def test_insert_method_returns_depth
    tree = BinarySearchTree.new
    assert_equal 0, tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal 1, tree.insert(16, "Johnny English")
    assert_equal 1, tree.insert(92, "Sharknado 3")
    assert_equal 2, tree.insert(50, "Hannibal Buress: Animal Furnace")
  end

end
