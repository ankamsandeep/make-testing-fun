require 'rspec/core/formatters/base_text_formatter'

class Emoji < RSpec::Core::Formatters::BaseTextFormatter

  EMOJIS = {
    '.' => "\u{1F49A} ",
    'E' => "\u{1f525} ",
    'F' => "\u{1f4a9} ",
    'S' => "\u{1f633} ",
  }

  def example_passed(example)
    output.print EMOJIS['.']
  end

  def example_pending(example)
    output.print EMOJIS['S']
  end

  def example_failed(example)
    output.print EMOJIS['F']
  end

  def dump_summary(duration, examples, failures, pendings)
    summary = "\nFinished in #{duration} seconds \n"
    summary << "#{examples} examples, "
    summary << "#{failures} #{EMOJIS['F']}, "
    summary << "#{pendings} #{EMOJIS['S']}"
    output.puts summary
  end

  def dump_failures
    # Nope
  end

  def dump_pending
    # Nope
  end

end
