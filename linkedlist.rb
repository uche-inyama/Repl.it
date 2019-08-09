class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
    def initialize
      @head = nil
      @tail = nil
    end

    def add(number)
      this_node = Node.new(number)
      if @head.nil?
        @head = this_node
      else
        @tail.next_node = this_node
      end
      @tail = this_node
    end

    def add_at(index, value)
      # p @head
      new_node = Node.new(value)
      if index == 0
        temp = @head
        @head = new_node
        @head.next_node = temp
        @head
      else
        prev = @head
        index -= 1
        index.times do
          prev = prev.next_node
        end
        temp = prev.next_node
        new_node.next_node = temp
        prev.next_node = new_node
      end
    end


    def get(index)
    # your code here
      current = @head
      p current
      begin
        index.times do
          current = current.next_node
        end
        return current.value
      rescue
        return "Index Out of Range!"
      end
    end


    def remove(index)
      current = @head

      if (index ==  0)
        @head = current.next_node
        return current
      end
      index -= 1
      index.times do
        current = current.next_node
      end
      temp2 = current.next_node
      current.next_node = temp2.next_node
    end

    def minimum
        return nil if @head.nil?
        mini = @head.value
        current = @head
        until current.next_node.nil?
          current = current.next_node
            if current.value < mini
              mini = current.value
            end
        end
        mini
    end

  end
