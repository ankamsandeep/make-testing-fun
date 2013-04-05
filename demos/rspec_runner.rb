require 'rspec/autorun'
require 'emoji'

describe "Emoji Rspec" do

  before do
    @samples = []
    100.times {|i| @samples << 0}
    2.times {|i| @samples << 1}
    3.times {|i| @samples << 3}
    sleep(0.1)  # Just to slow it down a little :-)
  end

  222.times do |index|
    it "should perform passing specs" do
      @samples.sample == 3 ? pending : 0.should == @samples.sample
    end
  end
end
