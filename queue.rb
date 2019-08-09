require_relative './linkedList'
class queue

  def initialize
      @linkedList = LinkedList.new
  end

  def add(number)
    @linkedList.add_at(0, number)
    @head = new_node
  end

  def remove
      @linkedList.remove(0)
  end
end
