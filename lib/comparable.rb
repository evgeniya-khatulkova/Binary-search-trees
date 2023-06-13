module Comparable
  def equal_data?(node_compare)
    @data == node_compare
  end

  def bigger?(node_compare)
    return if @data.nil?

    @data > node_compare
  end
end
