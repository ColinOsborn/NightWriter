require_relative 'file_reader'
class NightWriter
  attr_reader :file_reader

  def initialize
    @file_reader = FileReader.new
  end

  def encode_file_to_braille
      # I wouldn't worry about testing this method
      # unless you get everything else done
    plain = reader.read
    braille = encode_to_braille(plain)
  end

  def encode_to_braille(input)
      # brings in the message -- message that has been ingested from that file
      # you've taken in an INPUT string
      # do the magic
      # send out an OUTPUT string
      # "Created 'braille.txt' containing 256 characters"
      "111"
  end
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
