class BinaryTreeNode
  attr_accessor :value, :left, :right

  def initialize(value = nil)
    @value = value
    @left = nil
    @right = nil
  end

  def height
    BinaryTreeNode.height(self)
  end

  def self.height(node)
    # require "debug"; debugger
    return 0 if node.nil?
    left_height = self.height(node.left)
    right_height = self.height(node.right)
    return [left_height, right_height].max + 1
  end
end
