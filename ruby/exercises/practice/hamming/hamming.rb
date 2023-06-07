class Hamming
 
  def self.compute(d1, d2)
    raise ArgumentError.new("Strands don't have same length") unless d1.length == d2.length

    ct = 0
    if d1.length > 1
      @dna1 = d1.chars
      @dna2 = d2.chars

      @dna1.each_with_index do |d, idx|
      if d != @dna2[idx]
        ct = ct + 1
      end
      end
    elsif d1.length == 1
      if d1 != d2
        ct = 1
      end
    end
    ct
  end
end