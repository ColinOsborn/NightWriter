require 'pry'
require './lib/file_manager'
require './lib/night_writer'

class NightReader
  include Characters

  def initialize

  end

  def read
    filename = ARGV[0]
    file = File.read(filename)
    encode_braille_to_english(file)
  end

  def encode_braille_to_english(input)
    line1 = []
    line2 = []
    line3 = []
    input.transpose.each do |char|
      line1 << CHARACTERS[key][0]
      line2 << CHARACTERS[key][1]
      line3 << CHARACTERS[key][2]
    end
    english = line1 + line2 + line3
    english.join
  end

end
