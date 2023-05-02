class Series

  def initialize(s)
    @serie = s
    @r = Array.new
  end    

  def slices(len)
    raise ArgumentError.new("Slice out of range") unless len <= @serie.length
    raise ArgumentError.new("Slice out of range") if len <= 0
    raise ArgumentError.new("Slice out of range") if @serie.empty?

    @serie.chars.each do |n|
        @r = @r.map{ |s| (s.length < len) ? s += n : s}

        @r.push(n)
    end
    @r.select{ |s| s.length == len }
  end

end