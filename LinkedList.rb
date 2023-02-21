require_relative 'Node.rb'

class LinkedList

    attr_accessor :head, :tail

    def initialize
        @head = nil
        @tail = nil
    end

    def prepend(value)
        if @head == nil
            @head = value
            
        else
            value.pointer = @head
            @head = value

        end
    end

    def append(value)
        current_value = @head
        unless current_value.pointer == nil
            puts current_value
            current_value = current_value.pointer 
        end
        current_value.pointer = value
        value.pointer = nil   

    end


end




nodeA = Node.new(4)
nodeB = Node.new(10)
nodeC = Node.new(33)

linked_list = LinkedList.new

linked_list.prepend(nodeA)
linked_list.prepend(nodeB)
linked_list.append(nodeC)
