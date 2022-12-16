# LogLineParser.new('[ERROR]: Invalid operation').message
# => "Invalid operation"

# LogLineParser.new("[WARNING]:  Disk almost full\r\n").message
# => "Disk almost full"

# LogLineParser.new('[ERROR]: Invalid operation').log_level
# => "error"

# LogLineParser.new('[INFO]: Operation completed').reformat
# => "Operation completed (info)"
class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    ini = @line.chomp.index(/:/) + 2
    last = @line.chomp.length
    @line[ini, last].strip
  end

  def log_level
    ini = @line.chomp.index(/\[/) + 1
    last = @line.chomp.index(/\]/) - 1
    @line[ini, last].downcase
  end

  def reformat
    message + ' (' + log_level + ')'
  end
end
