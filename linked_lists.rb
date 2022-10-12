class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end
end


class LinkedList
  attr_accessor :node

  def initialize(node = nil)
    @node = node
  end

  def append(value)
    #adds a new node containing value to the end of the list
    @node.next_node until @node.next_node.nil?
    @node.next_node = Node.new(value)
  end    

  def prepend(value)
    #adds a new node containing value to the start of the list
    new_head = Node.new(value)
    new_head.next_node = @node
    @node = new_head
  end

  def size
    #returns the total number of nodes in the list
    count = @node.nil? ? 0 : 1
    until @node.next_node.nil?
      count += 1
      @node = @node.next_node
    end
    count
  end

  def head
    #returns the first node in the list
    return nil if @node.nil?
    current_head = @node
    return current_head
  end

  def tail
    #returns the last node in the list
    return nil if @node.nil?
    current_node = @node
    loop do
      break if current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node
  end

  def at(index)
    #returns the node at the given index
    return nil if @node.nil? || index < 0
    loop do 
      break if @node.next_node.nil? || index == i 
      @node = @node.next_node
      i += 1
    end
    @node.value
  end

  def pop 
    #removes the last element
    return nil if @node.nil?

    if @node.next_node.nil?
      popped = @node
      @next_node = nil
      return popped
    end

    loop do 
      break if @node.next_node.next_node.nil?
      @node = @node.next_node
    end
    popped = @node.next_node
    @node.next_node = nil
    popped
  end
  
  def contains?(value)
    #returns true if the passed in value is in the list and otherwise returns false
    until @node.nil?
      return true if @node.value == value
      @node = @node.next_node
    end
    false
  end

  def find(value)
    #returns the index of the node containing value, or nil if not found
    current_node = @node
    i = 0
    until current_node.nil
      break if current_node.value == value
      current_node = current_node.next_node
      i += 1
    end
    i 
  end

  def to_s
    #represent your linklist objects as strings, so you can print them out in the console
    #format: (value) -> (value) -> (value) -> nil
    node_string = ''
    current_node = @node
    until current_node.nil?
      node_string << if current_node.value.nil?
        "( nil ) -> "
      else
        "( #{current_node.value} ) ->"
      end
      current_node = current_node.next_node
    end
    node_string << ' nil'
  end

  #extra credit
  #tip: when inserting or removing a node, think about how it will affect the existing nodes
    #some of the nodes will need their #next_node link updated

  def insert_at(value, index)
    #inserts a new node with the provdied value at the given index
  end

  def remove_at(index)
    #removes the node at the given index
  end
end

