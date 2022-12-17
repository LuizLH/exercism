# BirdCount
class BirdCount
  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  def yesterday
    @birds_per_day[@birds_per_day.count - 2]
  end

  def total
    t = 0
    @birds_per_day.each do |d|
      t += d
    end
    t
  end

  def busy_days
    ct = 0
    @birds_per_day.each do |d|
      ct += 1 if d >= 5
    end
    ct
  end

  def day_without_birds?
    result = false
    @birds_per_day.each do |d|
      result = true if d.zero?
    end
    result
  end
end
