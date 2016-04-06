gem 'minitest', '~> 5.2'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/night_reader"

class NightReadTest < Minitest::Test

  def test_we_can_return_a_single_letter
    reader = NightReader.new
    output = reader.encode_braille_to_english("0.\n..\n..")
    assert_equal "a", output
  end

  def test_we_can_return_two_letters
    skip
    reader = NightWriter.new
    output = reader.encode_braille_to_english("0.0.\n..0.\n....")
    assert_equal "ab", output
  end

  def test_we_can_return_three_letters
    skip
    reader = NightWriter.new
    output = reader.encode_braille_to_english("0000\n...0\n....")
    assert_equal "cd", output
  end

  def test_we_return_a_word
    skip
    reader = NightWriter.new
    output = reader.encode_braille_to_english(".00..0.0\n0.000.00\n0.....0.")
    assert_equal "shit", output
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
