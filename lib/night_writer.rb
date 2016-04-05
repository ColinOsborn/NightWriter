require './lib/file_manager'
require './lib/characters'
require 'pry'

class NightWriter
  attr_reader :file_reader
  include Characters

  def initialize
    # encode_file_to_braille(message)
    @file_reader = FileManager.new
  end

  def encode_file_to_braille(input)
    writer = File.open(ARGV[1], "w")
    writer.write()
    writer.close

  #   capitalized_text = incoming_text.upcase
  # writer = File.open(ARGV[1], "w")
  # writer.write(capitalized_text)
  # writer.close
  end

  # def wrapper(input, line_length = 160)
  #   encode_to_braille(input).length < line_length ?
  # end

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

  braille = night_writer.translate('english')

  File.write('braille.txt', braille)
end
# puts "Created '#{ARGV[1]}' containing #{NightWriter.new.char_count} characters" if File.exists?(ARGV[1])
#  Shows me what my arguements are.
