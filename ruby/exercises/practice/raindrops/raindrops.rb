#has 3 as a factor, add 'Pling' to the result.
#has 5 as a factor, add 'Plang' to the result.
#has 7 as a factor, add 'Plong' to the result.
#does not have any of 3, 5, or 7 as a factor, the result should be the digits of the number.

class Raindrops
  def self.convert(n)
    result = String.new
      
    result << "Pling" if (n % 3).zero?
    result << "Plang" if (n % 5).zero?
    result << "Plong" if (n % 7).zero?
    result = n.to_s if result.empty?
  
    result
  end
end


  