gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/night_writer"

class NightWriterTest < Minitest::Test

  # def test_it_outputs_a_string
  #   skip
  #   night_writer = NightWriter.new
  #   output = night_writer.encode_to_braille("Hello world")
  #   assert output.include?("11")
  # end

  def test_we_can_return_a_single_letter
    night_writer = NightWriter.new
    output = night_writer.encode_file_to_braille("a")
    assert_equal "0.\n..\n..", output
  end

  def test_we_can_return_two_letters
    night_writer = NightWriter.new
    output = night_writer.encode_file_to_braille("ab")
    assert_equal "0.0.\n..0.\n....", output
  end

  def test_we_can_return_three_letters
    night_writer = NightWriter.new
    output = night_writer.encode_file_to_braille("cd")
    assert_equal "0000\n...0\n....", output
  end

  def test_we_return_a_word
    night_writer = NightWriter.new
    output = night_writer.encode_file_to_braille("shit")
    assert_equal ".00..0.0\n0.000.00\n0.....0.", output
  end

  def test_we_can_run_it_80_char_wide
    night_writer = NightWriter.new
    output = night_writer.encode_file_to_braille("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
    assert_equal "0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.\n................................................................................\n................................................................................", output
  end

end
