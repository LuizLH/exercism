# ResistorColor
class ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.color_code(color)
    COLORS.index(color)
  end

  # ResistorColorDuo.value(%w[brown black])
  def self.value(a_color)
    result = ''
    a_color.take(2).each { |color| result += COLORS.index(color).to_s }
    result.to_i
  end
end
