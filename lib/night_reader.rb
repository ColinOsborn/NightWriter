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
    translate = input.prepend("\n")
    translate.chars.map do |char|
      
        # line1 <<
      end
    end
  end
    # english = line1 + line2 + line3
    # english.join
    #
end

if __FILE__ == $0
  english = File.read('message.txt')
  night_writer = NightWriter.new
  braille = night_writer.encode_to_braille(english.chomp)
  File.write('braille.txt', braille)
end
# puts "Created '#{ARGV[1]}' containing 69 characters" if File.exists?(ARGV[1])
