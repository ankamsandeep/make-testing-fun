require "minitest/unit"

module MiniTest
  class Emoji

    # The IO we're going to pipe through.
    attr_reader :io

    EMOJIS = {
      '.' => "\u{1F49A} ",
      'E' => "\u{1f525} ",
      'F' => "\u{1f4a9} ",
      'S' => "\u{1f633} ",
      'P' => "\u{1f633} ",
    }

    def initialize(io)
      @io = io
    end

    def print(result)
      io.print(EMOJIS[result] || result)
    end

    def puts(*o)
      o.map! do |s|
        s.to_s.sub!(/failures/, EMOJIS['F'] )
        s.to_s.sub!(/errors/, EMOJIS['E'] )
        s.to_s.sub!(/skips/, EMOJIS['S'] )
      end

      super
    end

    def method_missing(msg, *args)
      return super unless io.respond_to? msg
      io.send(msg, *args)
    end

  end
end

MiniTest::Unit.output =
  MiniTest::Emoji.new(MiniTest::Unit.output)
