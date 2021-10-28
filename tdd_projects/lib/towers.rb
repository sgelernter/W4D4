class Towers
    attr_accessor :boxes

    def initialize
        @boxes = [["_____", "___", "_"], [], []]
    end

    def [](box)
        @boxes[box]
    end

    def []=(box, value)
        @boxes[box] = value
    end

    def move(start_box, end_box)
        self[end_box] << self[start_box].pop
        self.boxes
    end

end