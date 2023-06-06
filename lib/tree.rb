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
    if start >= finish
      return nil
    else
      current.left_node = build_tree(arr, start, mid - 1)
      current.right_node = build_tree(arr, mid + 1, finish)
    end

    current
  end

  def insert(some_node)
    current_node = @root
    previous_node = current_node
    until current_node.nil?
      previous_node = current_node
      if current_node.bigger?(some_node)
        current_node = current_node.left_node
      else
        current_node = current_node.right_node
      end
    end
    previous_node.bigger?(some_node) ? previous_node.left_node = Node.new(some_node) : previous_node.right_node = Node.new(some_node)
  end

  def delete(some_node)
  end

  def find(value)
    current_node = @root
    until current_node.nil?
      if current_node.equal_data?(value)
        return current_node
      else
        current_node.bigger?(value) ? current_node = current_node.left_node : current_node = current_node.right_node
      end
    end
    nil
  end

  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right_node, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right_node
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left_node, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left_node
  end

end
