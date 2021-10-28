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


end