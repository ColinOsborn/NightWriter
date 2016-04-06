require './lib/file_manager'
require './lib/characters'
require 'pry'

class NightWriter
  include Characters

  def initialize
    # encode_file_to_braille(message)
  end

  def read
    filename = ARGV[0]
    file = File.read(filename)
    encode_braille_to_file(file)
  end

  def encode_braille_to_file(file)
    translated_to_braille = encode_to_braille(file.chomp)
    writer = File.open(ARGV[1], "w")
    writer.write(translated_to_braille)
    writer.close
  end

  def encode_to_braille(input)
    line1 = []
    line2 = []
    line3 = []
    input.chars.map do |char|
      line1 << CHARACTERS[char][0]
      line2 << CHARACTERS[char][1]
      line3 << CHARACTERS[char][2]
    end
    this = "\n"
    line1.join + this + line2.join + this + line3.join
  end
end

if __FILE__ == $0
  english = File.read('message.txt')
  night_writer = NightWriter.new
  braille = night_writer.encode_to_braille(english.chomp)

  File.write('braille.txt', braille)
end

puts "Created '#{ARGV[1]}' containing #{NightWriter.new.char_count} characters" if File.exists?(ARGV[1])
