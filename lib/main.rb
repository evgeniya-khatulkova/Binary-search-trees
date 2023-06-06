require_relative 'node'
require_relative 'tree'
require_relative 'comparable'
 look = Node.new(2)
 boom = Node.new(3)
 p Tree.new([1, 5, 6])

# p boom.bigger?(look)


arr = [0, 1, 3, 2, 4]

loop = Tree.new

loop.build_tree(arr)

p loop
loop.pretty_print

p "*****************************************************"
loop.insert(17)
loop.pretty_print

p loop.find(17)
p loop.find(222)
