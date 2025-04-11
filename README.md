# Binary Tree Height

Write a program that:

- Takes the root node of a binary tree as input.
- Calculates the height of the tree, defined as the number of nodes along the longest path from the root node down to the farthest leaf node.
- Calculates the height of the tree, defined as the number of nodes along the longest path from the root node down to the farthest leaf node.

## Examples

### Find the height of a single-node tree

```ruby
root = BinaryTreeNode.new

BinaryTreeNode.height(root) == 1
```

### Find the height of a 3-level binary tree

```ruby
root = BinaryTreeNode.new(1)
root.left = BinaryTreeNode.new(2)
root.right = BinaryTreeNode.new(3)
root.left.left = BinaryTreeNode.new(4)
root.left.right = BinaryTreeNode.new(5)

BinaryTreeNode.height(root) == 3
```

### Find the height of an uneven tree

```ruby
root = BinaryTreeNode.new(1)
root.left = BinaryTreeNode.new(2)
root.right = BinaryTreeNode.new(4)
root.left.left = BinaryTreeNode.new(3)

BinaryTreeNode.height(root) == 3
```
