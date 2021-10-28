class Towers
    attr_accessor :boxes

    def initialize
        @boxes = [["_____", "___", "_"], [], []]
    end

    def [](pos)
        box, place = pos
        @boxes[box][place]
    end

    def []=(pos, value)
        box, place = pos
        @boxes[box][place] = value
    end
end