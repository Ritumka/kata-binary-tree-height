require "minitest/autorun"
require_relative "../solution"

class TestSolution < Minitest::Test
  def test_single_node_tree
    root = BinaryTreeNode.new

    assert_equal 1, BinaryTreeNode.height(root)
  end

  def test_3_level_balanced_tree
    root = BinaryTreeNode.new(1)
    root.left = BinaryTreeNode.new(2)
    root.right = BinaryTreeNode.new(3)
    root.left.left = BinaryTreeNode.new(4)
    root.left.right = BinaryTreeNode.new(5)

    assert_equal 3, BinaryTreeNode.height(root)
  end

  def test_3_level_unbalanced_tree
    root = BinaryTreeNode.new(1)
    root.left = BinaryTreeNode.new(2)
    root.right = BinaryTreeNode.new(4)
    root.left.left = BinaryTreeNode.new(3)

    assert_equal 3, BinaryTreeNode.height(root)
  end
end
