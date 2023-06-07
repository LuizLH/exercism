=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end
class Hamming
 
    def compute(d1, d2)
        @dna1 = d1.split
        @dna2 = d2.split

        raise ArgumentError.new("Strands don't have same length") unless @dna2.length == @dna1.length

        ct = 0
        @dna1.chars.each do |d, idx|
            if @dna1[idx] != @dna2[idx]
                ct++
            end
        end

        ct
    end

end