# Binary Tree Height

Write a program that:

- Takes the root node of a binary tree as input.
- Calculates the height of the tree, defined as the number of nodes along the longest path from the root node down to the farthest leaf node.
- Calculates the height of the tree, defined as the number of nodes along the longest path from the root node down to the farthest leaf node.

## Examples

### Find the height of a single-node tree



describe "Tree Height" do
  it "finds the height of a single-node tree" do
    root = TreeNode.new
    expect(tree_height(root)).to eq 1
  end
end


### Find the height of a 3-level binary tree

describe "Tree Height" do
  it "finds the height of a 3-level binary tree" do
    root = TreeNode.new(1, TreeNode.new(2), TreeNode.new(3, nil, TreeNode.new(4)))
    expect(tree_height(root)).to eq 3
  end
end

### Find the height of an uneven tree

describe "Tree Height" do
  it "correctly identifies the height of an uneven tree" do
    root = TreeNode.new(1, TreeNode.new(2, TreeNode.new(3)), TreeNode.new(4))
    expect(tree_height(root)).to eq 3
  end
end




