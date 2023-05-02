class Series

  def initialize(s)
    @serie = s
    @r = Array.new
  end    

  def acumula(n, len)
    for i in 0..(@r.length - 1) do
      if @r[i].length < len 
        @r[i] += n
      end
    end
    @r.push(n)
  end
 
  def slices(len)
    raise ArgumentError.new("Slice out of range") unless len <= @serie.length
    raise ArgumentError.new("Slice out of range") if len <= 0
    raise ArgumentError.new("Slice out of range") if @serie.empty?

    @serie.chars.each do |n, index|
      acumula(n, len)
    end
    @r.select{ |s| s.length == len }
  end

end