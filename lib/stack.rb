# your code here
class Stack
    def initialize(limit = -1)
        @stack = []
        @limit = limit
    end

    def push(value)
        if @limit == -1 || @limit > @stack.length 
            @stack.push(value)
        else
            raise 'Stack Overflow'
        end
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[@stack.length-1]
    end

    def size
        @stack.size
    end

    def empty?
        @stack.empty?
    end

    def full?
        !(@limit == -1 || @limit > @stack.length)
    end

    def search (elem)
        i = 0
        @stack.reverse_each do |x|
            if x == elem
                return i
            else
                i+=1
            end
        end
        return -1
    end

end