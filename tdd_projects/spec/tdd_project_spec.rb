require "tdd_project"
RSpec.describe Array do

    subject(:array) { Array.new() }

    describe "#my_uniq" do 
        before(:each) do
            array.push(1, 1, 1, 2, 2, 3, 4, 5, 6, 6, 8, 2, 7)
        end

        it "should not use built-in .uniq method" do
            expect(array).to_not receive(:uniq)
        end

        it "should not return any duplicate elements" do 
            expect(array.my_uniq).to contain_exactly(1, 2, 3, 4, 5, 6, 7, 8)
            # expect(array.my_uniq.none? {|ele| array.my_uniq.count(ele) > 1} ).to be true
        end

        it "should return a new array" do
            expect(array.my_uniq).to_not be(array)
        end
    end

    describe "#two_sum" do
        before(:each) do
            array.push(-1, 0, 2, -2, 1, 1)
        end
        
        it "should return a 2D array" do
            expect(array.two_sum).to be_a(Array)
            expect(array.two_sum).to all(be_a(Array))
        end

        it "should find all possible zero sum pairs" do
            expect(array.two_sum).to contain_exactly([0,4],[0,5],[2,3])
        end

        it "should order pairs with ascending index values" do
            sums = array.two_sum
            first_index = sums.map { |ele| ele[0] }
            second_index = sums.map { |ele| ele[1] }
            expect(first_index).to eq(first_index.sort)
            expect(second_index).to eq(second_index.sort)
        end
    end
end
