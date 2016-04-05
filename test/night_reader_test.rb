gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/night_reader"

class NightReadTest < Minitest::Test
  
  def test_write_file_can_be_created
    assert File.exists?(ARGV[1])
  end
end
