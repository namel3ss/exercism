class Complement
  VERSION = 2

  DNA_COMPLEMENTS = {
    'A' => 'U',
    'C' => 'G',
    'G' => 'C',
    'T' => 'A'
  }

  def self.of_dna(dna)
    build_complement(DNA_COMPLEMENTS, dna)
  end

  def self.of_rna(rna)
    build_complement(DNA_COMPLEMENTS.invert, rna)
  end

  def self.build_complement(complements, strand)
    fail ArgumentError, 'Invalid strand.'\
      unless strand_valid?(strand, complements.keys)

    keys_string = complements.keys.join

    strand.gsub(/[#{keys_string}]/, complements)
  end

  def self.strand_valid?(strand, valid_chars)
    (strand.chars.uniq - valid_chars).empty?
  end
end
