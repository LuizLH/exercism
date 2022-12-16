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
    total = @speed * 221

    case @speed
    when 1..4 then (total * 100) / 100.to_f
    when 5..8 then (total * 90) / 100.to_f
    when 9 then (total * 80) / 100.to_f
    when 10 then (total * 77) / 100.to_f
    else 0
    end
  end

  # calculate how many completed, working cars are produced per minute.
  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
