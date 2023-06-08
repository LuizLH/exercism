# Examples of isograms:
# lumberjacks
# background
# downstream
# six-year-old
# The word isograms, however, is not an isogram, because the s repeats.
class Isogram
  def self.isogram?(input)
    input_chars = input.downcase.gsub(/[\s-]/, '')
    unique_chars = input_chars.chars.uniq
    
    unique_chars.length == input_chars.length
  end
end