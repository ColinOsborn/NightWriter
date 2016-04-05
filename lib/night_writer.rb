require_relative 'file_reader'
require './lib/english'
require 'pry'

class NightWriter
  attr_reader :file_reader
  include English

  def initialize
    @file_reader = FileReader.new
  end

  def encode_file_to_braille(input)
    line1 = []
    line2 = []
    line3 = []
    input.chars.map do |char|
      line1 << ENGLISH[char][0]
      line2 << ENGLISH[char][1]
      line3 << ENGLISH[char][2]
    end
    this = "\n"
    string = line1.join + this + line2.join + this + line3.join
    return string
  end

  # def encode_to_braille(input_words)
  #
  #     # brings in the message -- message that has been ingested from that file
  #     # you've taken in an INPUT string
  #     # do the magic
  #     # send out an OUTPUT string
  #     # "Created 'braille.txt' containing 256 characters"
  #     "111"
  # end
end

puts ARGV.inspect
#  Shows me what my arguements are.

# Iteration 1
#Run a file from the command line and takes in two arguements,
# name of input file will be first arg and second will be output file
# output; a string with interpolation,
# read output file name and num of characters in input file
 #
 # Iteration 2
  # wanting to take in that "message.txt" read it,
# then I want to create a new file "braille.txt"
# inside that new file, that's the translated text to braille



# prepare the string, no special characters,
# I wouldn't worry about testing this method -- encode_file_to_braille
#   # unless you get everything else done
