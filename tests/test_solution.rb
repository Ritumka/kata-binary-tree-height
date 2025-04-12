require "minitest/autorun"
require_relative "../solution2"

class TestSolution < Minitest::Test
  def test_empty_tree
    assert_equal 0, BinaryTreeNode.height(nil)
  end

  def test_single_node_tree
    root = BinaryTreeNode.new

    assert_equal 1, root.height
  end

  def test_3_level_balanced_tree
    root = BinaryTreeNode.new(1)

    root.left = BinaryTreeNode.new(2)
    root.right = BinaryTreeNode.new(3)

    root.left.left = BinaryTreeNode.new(4)
    root.left.right = BinaryTreeNode.new(5)
    root.right.left = BinaryTreeNode.new(4)
    root.right.right = BinaryTreeNode.new(5)

    assert_equal 3, root.height
  end

  def test_left_skewed_tree
    root = BinaryTreeNode.new(1)

    root.left = BinaryTreeNode.new(2)

    root.left.left = BinaryTreeNode.new(3)

    root.left.left.left = BinaryTreeNode.new(4)

    assert_equal 4, root.height
  end

  def test_right_skewed_tree
    root = BinaryTreeNode.new(1)

    root.right = BinaryTreeNode.new(2)

    root.right.right = BinaryTreeNode.new(3)

    root.right.right.right = BinaryTreeNode.new(4)

    assert_equal 4, root.height
  end
end
