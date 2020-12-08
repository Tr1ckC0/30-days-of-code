class ArrayButNot
    attr_accessor :arr

    def initialize(arr)
        self.arr = arr
    end

    def each(&block)
        for item in self.arr
            block.call(item)
        end
    end

    def count(&block)
        count = 0
        for item in self.arr
            if block.call(item)
                count += 1
            end
        end
        count
    end
end
arr = ArrayButNot.new([1, 3, 4, 6, 2, 45])
puts arr.count { |num| num > 2}
# => 4


