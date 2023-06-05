class Node
   attr_accessor :data, :right_node, :left_node

    def initialize(data, right_node = nil, left_node = nil)
     @data = data
     @right_node = right_node
     @left_node = left_node
    end

end
