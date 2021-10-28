require "towers"
RSpec.describe Towers do
    subject(:game) {Towers.new}

    describe "#move" do
        it "should accept a start box and an end box"

        it "should move the top ring from one box to another box"

        it "should only move one ring at a time"

        it "should place the ring moved to the top of the stack in new box"

        it "should print the array with the rings in the new position"

    end

    describe "#won?" do
        it "should return true when all three rings are stacked correctly in the center box"

        it "should return false when the game has not yet been won"

    end


end