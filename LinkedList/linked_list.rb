class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def prepend(value)
    new_node = Node.new(value, @head)
    @head = new_node
    @tail = new_node if @tail.nil?
  end

  def size
    count = 0
    current_node = @head
    while current_node
      count += 1
      current_node = current_node.next_node
    end
    count
  end

  def insert_at(value, index)
    return prepend(value) if index.zero?

    current_node = @head
    current_index = 0

    while current_node && current_index < index - 1
      current_node = current_node.next_node
      current_index += 1
    end

    return unless current_node

    new_node = Node.new(value, current_node.next_node)
    current_node.next_node = new_node
    @tail = new_node if new_node.next_node.nil?
  end

  def remove_at(index)
    return @head = @head.next_node if index.zero?

    current_node = @head
    current_index = 0

    while current_node && current_index < index - 1
      current_node = current_node.next_node
      current_index += 1
    end

    return unless current_node && current_node.next_node

    current_node.next_node = current_node.next_node.next_node
    @tail = current_node if current_node.next_node.nil?
  end

  def to_s
    result = ""
    current_node = @head

    while current_node
      result += "( #{current_node.value} ) -> "
      current_node = current_node.next_node
    end

    result + "nil"
  end
end
