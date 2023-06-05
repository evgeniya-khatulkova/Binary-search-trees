require_relative 'comparable'

class Node
  attr_accessor :data, :right_node, :left_node

  def initialize(data)
    @data = data
    @right_node = nil
    @left_node = nil
  end

  include Comparable

  def add_left(data)
    self.left_node = data
  end
end
