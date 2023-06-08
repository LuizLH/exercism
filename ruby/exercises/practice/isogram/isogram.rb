# Examples of isograms:
# lumberjacks
# background
# downstream
# six-year-old
# The word isograms, however, is not an isogram, because the s repeats.
class Isogram

  def self.isogram?(input)
    result = true

    if !input.empty?
      dict = Hash.new
      dict.default = 0
      input.delete("-").delete(" ").downcase.each_char.map { |e| dict[e] = dict[e] + 1  }

      dict.each_value do |value|
        if (value > 1)
          result = false 
          break
        end 
      end

    end

    result
  end

end