require 'minitest/autorun'
require_relative 'emoji_mini'

describe "Emoji Minitest" do

  before do
    @samples = []
    100.times {|i| @samples << 0}
    10.times {|i| @samples << 1}
    4.times {|i| @samples << 3}
    sleep(0.05)  # Just to slow it down a little :-)
  end

  222.times do |index|
    it "should perform passing specs" do
      @samples.sample == 3 ? pending : 0.must_equal(@samples.sample)
    end
  end

end
