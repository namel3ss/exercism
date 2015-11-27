class Hamming
  VERSION = 1

  def self.compute(strand_a, strand_b)
    fail ArgumentError, 'Strands must be of same length!'\
      if strand_a.size != strand_b.size

    strand_a.chars.select.with_index do |char, index|
      char != strand_b.chars[index]
    end.size
  end
end
