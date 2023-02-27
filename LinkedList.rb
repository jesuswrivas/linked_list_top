require_relative 'Node.rb'

class LinkedList

    attr_accessor :head

    def initialize
        @head = nil
       
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

        if @head == nil
            @head = value
        else

            current_value = @head

            loop do
                current_value = current_value.pointer
                break if current_value.pointer == nil      
            end
            
            current_value.pointer = value
            value.pointer = nil
        end
           
    end


    def size

        return 0 if @head == nil

        current_value = @head
        counter = 1

        while current_value.pointer != nil
            current_value = current_value.pointer
            counter += 1
                
        end
        return counter      
    end
    
    def head
        @head
    end


    def tail
        #return nil if @head == nil

        current_value = @head
       
        while current_value.pointer != nil
            current_value = current_value.pointer               
        end
        return current_value    
    end


    def at_index(index)
        
        current_value = @head
        i = 0
       
        while i < index
            current_value = current_value.pointer 
            i += 1              
        end
        return current_value   

    end


    def pop
        if self.size == 1
            popped_value = self.tail
            @head = nil
            return popped_value
        
        else
            popped_value = self.tail.value
            self.at_index(self.size-2).pointer = nil
            return popped_value
            
        end
        
    end


     def contains?(item)
        (0..self.size-1).each do |i|
            return true if self.at_index(i).value == item
        end
        return false
       
    end
           
    def find(item)
        (0..self.size-1).each do |i|
            return i if self.at_index(i).value == item
        end
        return nil
    end
     
    def to_s
        current_value = @head
        print "#{current_value.value} ->"
        while current_value.pointer != nil
            current_value = current_value.pointer      
            print "#{current_value.value} ->"     
        end
        print "nil"
        
    end


end


nodeA = Node.new(4)
nodeB = Node.new(10)
nodeC = Node.new(33)
nodeD = Node.new(44)

linked_list = LinkedList.new

linked_list.prepend(nodeA) 

linked_list.prepend(nodeB) 
linked_list.append(nodeC)

