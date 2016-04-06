gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/night_reader"

class NightReadTest < Minitest::Test

  def test_we_can_return_braille_to_english
    nr = NightReader.new
    output = nr.encode_braille_to_english(braille.txt)
    assert_equal "hello world", output
  end
end
