require 'calc'

RSpec.describe Calc do
#  before do #(:example)
#    @calc = Calc.new
#  end

  # subject
  subject(:calc) { Calc.new }

  # let
  context "tax 5%" do
    let(:tax) { 0.05 }
    it { expect(calc.price(100, tax)).to eq(105) }
  end

  context "tax 8%" do
    let(:tax) { 0.08 }    
    it { expect(calc.price(100, tax)).to eq(108) }
  end

  # example / specify
  context "when normal mode" do
    it "given 2 and 3, returns 5" do
      expect(calc.add(2,3)).to eq(5) # matcher: eq, not_to, to be true/false, to be_between(x, y),
                                      # to respond_to(method), to be_integer
    end
    it "given 5 and 8, returns 13" do
      expect(calc.add(5,8)).to eq(13)
    end
  end

  context "when graph mode" do
    it {
    }
    it "draws graph" #pending
  end


end
