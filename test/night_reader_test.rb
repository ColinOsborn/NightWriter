gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/night_reader"

class NightReadTest < Minitest::Test
  def test_NightReader_object_can_be_instantiated
    message = NightReader.new

    assert_equal NightReader, message.class
  end

  def test_write_file_can_be_created
    assert File.exists?(ARGV[1])
  end
end
