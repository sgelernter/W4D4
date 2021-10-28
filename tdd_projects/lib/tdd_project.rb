class Array

    def my_uniq
        uniq = []
        self.each { |ele| uniq << ele unless uniq.include?(ele) }
        uniq
    end

    def two_sum
        pairs = []
        (0...self.length).each do |i|
            (0...self.length).each do |j|
                pairs << [i, j] if self[i] + self[j] == 0 && j > i
            end
        end
        pairs
    end

    def my_transpose
        length = self.length
        raise ArgumentError if self.any? { |subarray| subarray.length != length }
        transposed = Array.new(length){Array.new(length)}

        (0...length).each do |i|
            (0...length).each do |j|
                transposed[j][i] = self[i][j]
            end
        end
        transposed   
    end

    def stock_picker
        return nil if self.empty?
        day_1 = nil
        day_2 = nil
        max_diff = 0

        (0...self.length).each do |i|
            (0...self.length).each do |j|
                if j > i && self[j] - self[i] > max_diff
                    max_diff = self[j] - self[i]
                    day_1, day_2 = i, j
                end
            end
        end
        [day_1, day_2]    
    end
end