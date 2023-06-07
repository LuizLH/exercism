class Hamming
  def self.compute(d1, d2)
    raise ArgumentError, "Strands don't have same length" unless d1.length == d2.length

    ct = 0
    
    d1.each_char.with_index do |char, idx|
      ct += 1 if char != d2[idx]
    end
    
    ct
  end
end  