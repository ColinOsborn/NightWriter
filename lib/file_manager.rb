class FileManager

  def read
    filename = ARGV[0]
    File.read(filename)
  end

  def write(path, contents)
    File.write(path, contents)
  end
end
