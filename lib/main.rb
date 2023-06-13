require_relative 'node'
require_relative 'tree'
require_relative 'comparable'

binary = Tree.new(Array.new(15) { rand(1..100) })
binary.build_tree(binary.arr)
binary.pretty_print
p binary.balanced?
p binary.inorder
p binary.preorder
p binary.postorder
binary.insert(105)
binary.insert(101)
binary.insert(121)
binary.insert(108)
binary.pretty_print
p binary.balanced?
binary.rebalance
p "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
binary.pretty_print
p binary.balanced?
p binary.inorder
p binary.preorder
p binary.postorder
