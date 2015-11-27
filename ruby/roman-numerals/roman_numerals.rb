class Fixnum
  NUMERALS = {
    1 => 'I',
    5 => 'V',
    10 => 'X',
    50 => 'L',
    100 => 'C',
    500 => 'D',
    1000 => 'M'
  }

  def to_roman
    steps = [10, 100, 100]
    result = ''

    steps.each do |step|
      part = self % step
    end
  end
end
