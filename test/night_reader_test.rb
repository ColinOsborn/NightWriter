gem 'minitest', '~> 5.2'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/night_reader"

class NightReadTest < Minitest::Test

  def test_we_can_return_a_single_letter
    skip
    reader = NightReader.new
    output = reader.encode_braille_to_english("0.\n..\n..")
    assert_equal "a", output
  end

  def test_we_can_return_my_message
    reader = NightReader.new
    output = reader.encode_braille_to_english("0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...")
    assert_equal "hello world", output
  end

  def test_we_can_run_it_80_char_wide
    skip
    reader = NightWriter.new
    output = reader.encode_braille_to_english("0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.\n................................................................................\n................................................................................")
    assert_equal "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", output
  end

  def test_we_can_return_braille_message_to_english
    skip
    reader = NightReader.new
    output = reader.encode_braille_to_english(braille.txt)
    assert_equal "hello world", output
  end
end
