class Raindrops

  DROPS = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(number)
    result = ''

    DROPS.each do |key, value|
      result += value if number % key == 0
    end

    result.empty? ? number.to_s : result
  end
end
