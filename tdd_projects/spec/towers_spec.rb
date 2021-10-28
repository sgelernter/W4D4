require "towers"
RSpec.describe Towers do
    subject(:game) {Towers.new}
    let(:one_move) {[["_____", "___"], ["_"], []]}
    let(:stack_move) {[["_____"], ["_", "___"], []]}


    describe "#move" do

        it "should move the top ring from one box to another box and return the new positions" do
            expect(game.move(0, 1)).to eq(one_move)
        end

        it "should place the ring moved to the top of the stack in new box" do 
            game.move(0,1)
            expect(game.move(0,1)).to eq(stack_move)
        end

    end

    describe "#won?" do
        it "should return true when all three rings are stacked correctly in the center box"

        it "should return false when the game has not yet been won"

    end

end