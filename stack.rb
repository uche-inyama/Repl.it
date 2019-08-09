require_relative './linkedList.rb'

class Stack

  def initialize
      @linkedList = LinkedList.new
  end

  def push(number)
    @linkedList.add_at(0, number)
  end

  def pop
    @linkedList.remove(0)&.value
  end
  #
  def min
    @linkedList.minimum
  end
end
