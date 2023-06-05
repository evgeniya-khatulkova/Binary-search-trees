class Tree

  attr_accessor :arr, :root

  def initialize(arr = [])
    @arr = arr
    @root = nil
  end

  def build_tree(arr, start = 0, finish = arr.length - 1)
    arr = arr.uniq.sort
    mid = (start + finish) / 2
    current = Node.new(arr[mid])
    @root = current if @root.nil?
    if start > finish
      return nil
    else
      current.left_node = build_tree(arr, start, mid - 1)
      current.right_node = build_tree(arr, mid + 1, finish)
    end
    current
  end

  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right_node, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right_node
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left_node, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left_node
  end

end
