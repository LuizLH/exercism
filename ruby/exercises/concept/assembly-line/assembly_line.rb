# table shows how speed influences the success rate:
# 1 to 4: 100% success rate.
# 5 to 8: 90% success rate.
# 9: 80% success rate.
# 10: 77% success rate.
class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    success_rate = if @speed <= 4
                     1
                   elsif @speed <= 8
                     0.9
                   elsif @speed == 9
                     0.8
                   else
                     0.77
                   end

    @speed * 221 * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
