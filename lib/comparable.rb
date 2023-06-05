module Comparable
  def equal_data?(node_compare)
    self.data == node_compare.data ? true : false
  end

  def bigger?(node_compare)
    @data > node_compare ? true : false
  end

end
