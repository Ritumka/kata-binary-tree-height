# Binary Tree Height

Write a program that:

- Takes the root node of a binary tree as input.
- Calculates the height of the tree, defined as the number of nodes along the longest path from the root node down to the farthest leaf node.
- Calculates the height of the tree, defined as the number of nodes along the longest path from the root node down to the farthest leaf node.

## Examples

### Find the height of a single-node tree

```yaml
Tree Structure:
      1

Longest path: 1
Height: 1
```

```ruby
root = BinaryTreeNode.new

root.height == 1
```

### Find the height of a 3-level binary tree

```yaml
Tree Structure:
       1
     /   \
    2     3
   / \
  4   5

Longest path: 1 → 2 → 4 (or 5)
Height: 3
```

```ruby
root = BinaryTreeNode.new(1)
root.left = BinaryTreeNode.new(2)
root.right = BinaryTreeNode.new(3)
root.left.left = BinaryTreeNode.new(4)
root.left.right = BinaryTreeNode.new(5)

root.height == 3
```

### Find the height of an uneven tree

```yaml
Tree Structure:
      1
     / \
    2   4
   /
  3

Longest path: 1 → 2 → 3
Height: 3
```

```ruby
root = BinaryTreeNode.new(1)
root.left = BinaryTreeNode.new(2)
root.right = BinaryTreeNode.new(4)
root.left.left = BinaryTreeNode.new(3)

root.height == 3
```

## Challenge

### Breadth-First vs Depth-First Search

- **Depth-First**: You keep going down left or right until you hit the end (a nil node). Then you backtrack and try the next branch.
- **Breadth-First**: You process nodes in "levels" — root, then its children, then their children, etc. Usually done with a queue.

Does your solution utilize Breadth-First or Depth-First Search?

### Size

Write a method that counts total number of nodes in the tree

### Leaf Nodes

Write a mehtod that counts all leaf nodes (no children)

### Traversal

```yaml
      A
     / \
    B   C
   / \
  D   E
```

Write methods that convert the tree into an array of values in a specific order:

- **Preorder**: Root → Left → Right (A B D E C)
- **Inorder**: Left → Root → Right (D B E A C)
- **Postorder**: Left → Right → Root (D E B C A)
