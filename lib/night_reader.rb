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
    translate = input.prepend("\n")
    built = []
    built << translate.split
    binding.pry
  end
    # translate = input.prepend("\n")
    # built = translate.split("\n")
    # container = []
    # temp = built.shift
    # container << built
    # binding.pry
    # a = container.map do |built|
    #   ENGLISH[built]
    # end.join
end

if __FILE__ == $0
  english = File.read('message.txt')
  night_writer = NightWriter.new
  braille = night_writer.encode_to_braille(english.chomp)
  File.write('braille.txt', braille)
end
# puts "Created '#{ARGV[1]}' containing 69 characters" if File.exists?(ARGV[1])
