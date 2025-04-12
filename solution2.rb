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
  
    def self.height(root)
      # require "debug"; debugger
      return 0 if root.nil?
  
      queue = [root]
      height = 0
  
      while queue.any?
          queue.length.times do
              node = queue.shift # removes first element from queue
              queue.push(node.left) if node.left
              queue.push(node.right) if node.right
          end
          height += 1
      end
  
      height
    end
  
    def leaf?
      left.nil? && right.nil?
    end
  end
  