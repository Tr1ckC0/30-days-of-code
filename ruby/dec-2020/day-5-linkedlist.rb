class LinkedList
    attr_reader :head
    attr_accessor :tail
    
    def initialize(head, tail = nil)
      @head, @tail = head, tail
    end
  
    def **(val)
      @tail.next = ListNode.new(val)
      @tail = @tail.next
    end
     
    def inspect
      [@head].inspect
    end

    def each(&block)
        block.call(@head)
        @head.next.each(&block) if @head.next
    end
end

class ListNode
    attr_accessor(:val)

    def initialize(val, nxt=nil)
        @val, @nxt = val, nxt
    end

    def next
        @nxt
    end

    def next=(input)
        @nxt = input
    end

    def each(&block)
        block.call(self)
        self.next.each(&block) if self.next
    end
end

tail = ListNode.new(3)
head = ListNode.new(1, tail)

list = LinkedList.new(head, tail)

list ** 4

print list.inspect
list.each { |node| puts node.val + 1}

