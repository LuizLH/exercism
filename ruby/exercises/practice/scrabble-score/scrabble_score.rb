# Letter                           Value
# A, E, I, O, U, L, N, R, S, T       1
# D, G                               2
# B, C, M, P                         3
# F, H, V, W, Y                      4
# K                                  5
# J, X                               8
# Q, Z                               10
class Scrabble
    LETTER_SCORES = {
      "A" => 1, "E" => 1, "I" => 1, "O" => 1, "U" => 1, "L" => 1, "N" => 1, "R" => 1, "S" => 1, "T" => 1,
      "D" => 2, "G" => 2,
      "B" => 3, "C" => 3, "M" => 3, "P" => 3,
      "F" => 4, "H" => 4, "V" => 4, "W" => 4, "Y" => 4,
      "K" => 5,
      "J" => 8, "X" => 8, "Q" => 10, "Z" => 10
    }.freeze
    
    def initialize(input)
      @input = input.upcase
    end
    
    def score
      @input.chars.sum { |char| LETTER_SCORES[char] || 0 }
    end
  end