class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    #adds a new node containing value to the end of the list
  end

  def prepend(value)
    #adds a new node containing value to the start of the list
  end

  def size
    #returns the total number of nodes in the list
  end

  def head
    #returns the first node in the list
  end

  def tail
    #returns the last node in the list
  end

  def at(index)
    #returns the node at the given index
  end

  def pop 
    #removes the last element
  end
  
  def contains?(value)
    #returns true if the passed in value is in the list and otherwise returns false
  end

  def find(value)
    #returns the index of the node containing value, or nil if not found
  end

  def to_s
    #represent your linklist objects as strings, so you can print them out in the console
    #format: (value) -> (value) -> (value) -> nil
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

class Node
  attr_reader :value
  attr_accessor :next_node
  
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
