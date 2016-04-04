gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/night_writer"

class NightWriterTest < Minitest::Test

  def test_it_takes_an_arguement
    # night_writer = NightWriter.new("message.txt")
    # assert night_writer

  end

  def test_it_outputs_a_string
    night_writer = NightWriter.new
    output = night_writer.encode_to_braille("Hello world")
    assert output.include?("11")
  end
end
