gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/night_writer"


class NightWriterTest < Minitest::Test

  def test_we_can_return_a_single_letter
    night_writer = NightWriter.new
    output = night_writer.encode_to_braille("a")
    assert_equal "0.\n..\n..", output
  end

  def test_we_can_return_two_letters
    night_writer = NightWriter.new
    output = night_writer.encode_to_braille("ab")
    assert_equal "0.0.\n..0.\n....", output
  end

  def test_we_can_return_three_letters
    night_writer = NightWriter.new
    output = night_writer.encode_to_braille("cd")
    assert_equal "0000\n...0\n....", output
  end

  def test_we_return_a_word
    night_writer = NightWriter.new
    output = night_writer.encode_to_braille("shit")
    assert_equal ".00..0.0\n0.000.00\n0.....0.", output
  end

  def test_we_can_run_it_80_char_wide
    night_writer = NightWriter.new
    output = night_writer.encode_to_braille("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
    assert_equal "0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.\n................................................................................\n................................................................................", output
  end

  def test_we_can_return_puncuation_with_a_word
    night_writer = NightWriter.new
    output = night_writer.encode_to_braille("shit!")
    assert_equal ".00..0.0..\n0.000.0000\n0.....0.0.", output
  end

  def test_we_can_return_all_of_these_characters
    skip
    night_writer = NightWriter.new
    output = night_writer.encode_to_braille(" !',-.?abcdefghijklmnopqrstuvwxyz")
    assert_equal nil, output
  end

  def test_we_can_send_braille_to_files
    night_writer = NightWriter.new
    output = night_writer.encode_braille_to_file(message.txt
    assert_equal nil, output
  end


end
