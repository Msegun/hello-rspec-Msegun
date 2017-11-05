# top level class comment
class Hamming
  def self.compute(dna1, dna2)
    raise ArgumentError if dna1.length != dna2.length

    difference = 0
    i = 0

    while i < dna1.length
      difference += 1 if dna1[i] != dna2[i]
      i += 1
    end

    difference
  end
end

# Nie mam pojecia co to jest -_-
module BookKeeping
  VERSION = 3
end
