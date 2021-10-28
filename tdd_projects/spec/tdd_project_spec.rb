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


end
