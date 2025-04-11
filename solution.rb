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
    # TODO
  end
end
