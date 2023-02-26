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

        loop do
            current_value = current_value.pointer
            break if current_value.pointer == nil      
        end
        
        current_value.pointer = value
        value.pointer = nil   

    end


    def size

        return 0 if @head == nil

        current_value = @head
        next_value = current_value.pointer
        counter = 1

        while next_value != nil
            current_value = next_value
            next_value = current_value.pointer
            counter += 1
                
        end
        return counter      
    end
    


end


nodeA = Node.new(4)
nodeB = Node.new(10)
nodeC = Node.new(33)
nodeD = Node.new(44)

linked_list = LinkedList.new

linked_list.prepend(nodeA) 

#linked_list.prepend(nodeB) 
#linked_list.append(nodeC)
