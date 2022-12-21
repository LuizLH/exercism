# Acronym
class Acronym
  def self.abbreviate(acron)
    list = acron.gsub(/[-]/, ' ').split(' ')

    list.map { |a| (a[0]).to_s.upcase }.join
  end
end
