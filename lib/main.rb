require_relative 'node'
require_relative 'tree'
require_relative 'comparable'
 look = Node.new(2)
 boom = Node.new(3)
 p Tree.new([1, 5, 6])

# p boom.bigger?(look)


arr = [0, 1, 3, 2, 4, 5, 2, 11, 9, 23, 22, 45, 56, -1, 55, 89, 112, 223]

loop = Tree.new

loop.build_tree(arr)

p loop
loop.pretty_print

p "*****************************************************"
loop.insert(17)
loop.pretty_print
