require_relative 'node'
require_relative 'tree'
require_relative 'comparable'
 look = Node.new(2)
 boom = Node.new(15)
 p Tree.new([1, 5, 6])

arr = [0, 1, 3, 2, 4, 8, 21, 13]

loop = Tree.new

loop.build_tree(arr)

p loop
loop.pretty_print

p "*****************************************************"

loop.insert(15)
loop.insert(5)
loop.insert(-2)

boom = loop.find(3)
p boom

# loop.delete(0)
loop.pretty_print

# loop.level_order { |element| puts " #{element.data} ->" }

# p loop.postorder
# loop.inorder{ |element| puts " #{element} ->" }
# loop.postorder{ |element| puts " #{element.data} ->" }

# p loop.height(boom)

p loop.rebalance
