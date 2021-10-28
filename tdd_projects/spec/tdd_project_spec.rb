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
            # expect(array.my_uniq).to contain_exactly(1, 2, 3, 4, 5, 6, 7, 8)
            expect(array.my_uniq.none? {|ele| array.my_uniq.count(ele) > 1} ).to be true
        end

        it "should return a new array" do
            expect(array.my_uniq).to_not be(array)
        end
    end

    let(:second_place_check) {[1, -2, 2, 0, 2]}

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
            expect(first_index).to eq(first_index.sort)
            expect(second_place_check.two_sum).to eq([[1, 2], [1, 4]])
        end
    end

    describe "#my_transpose" do
        
        before(:each) do 
            array.push([0, 1, 2], [3, 4, 5], [6, 7, 8])
        end
        let(:array_1) {[[1, 2], [3, 4, 5]]}
        let(:array_2) {[["a", "b"], ["c", "d"]]}

        it "should return a 2D array" do
            expect(array.my_transpose).to be_a(Array)
            expect(array.my_transpose).to all(be_a(Array))
        end

        it "should raise an error if the input array is not square" do
            expect {array_1.my_transpose}.to raise_error(ArgumentError)
        end

        it "should not use the built-in #transpose method" do 
            expect(array).to_not receive(:transpose)
        end

        it "should transpose the array" do
            expect(array_2.my_transpose).to eq([["a", "c"], ["b", "d"]])
            expect(array.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
        end
    end

    describe "#stock_picker" do

        let(:array_1) {[100, 200, 250, 325]}
        let(:array_2) {[100, 50, 75, 25, 90]}
        let(:array_3) {[100, 50, 75, 25, 50]}

        it "should return the most profitable pair of days to buy, then sell" do 
            expect(array_1.stock_picker).to eq([0, 3])
            expect(array_2.stock_picker).to eq([1, 4])
        end

        it "should not return a pair that is out of order"

        it "should return nil if given an empty array" do
            expect([].stock_picker).to eq(nil)
        end

        it "should take the earlier pair of days in the event of a tie"

    end

end
