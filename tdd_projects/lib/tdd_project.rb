class Array

    def my_uniq
        uniq = []
        self.each { |ele| uniq << ele unless uniq.include?(ele) }
        uniq
    end

end