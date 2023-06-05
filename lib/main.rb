require_relative 'node'
require_relative 'tree'
require_relative 'comparable'
 look = Node.new(2)
 boom = Node.new(3)
 p Tree.new([1, 5, 6])

p look.equal_data(boom)
