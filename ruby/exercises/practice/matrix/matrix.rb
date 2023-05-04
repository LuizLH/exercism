class Matrix

    def initialize(ms)
      @ms = ms
      
      @m = []

      @ms.split("\n") do |row|
        ro = Array.new
        row.split.each do |r|
          ro.push(r.to_i)
        end
        @m << ro
      end

      @c = []
      
      @m[0].each_with_index do | index, x |
        col = Array.new
        (0..@m.length-1).each_with_index do | ct |
          col.push(@m[ct][x])
        end
        @c << col
      end

    end    
  
    def rows
      @m
    end

    def columns
      @c
    end
  
  end