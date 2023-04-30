=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end
# ResistorColor
class Phrase

    def initialize(phrase)
        @phrase = phrase.downcase
    end    
 
    def word_count()
      words = @phrase.split.map{ |s| s.gsub(/[,!.&@$%:^]/, " ") }

      words2 = words.join(' ')

      words = words2.split.map{ |s| s.strip }

      h = Hash.new
      words.each do |s|
        r = s.chomp.lstrip.gsub(/\A'|'\z/, '')

        if r != ""
          h.include?(r) ? h[r] += 1 : h[r] = 1
        end
      end  
      h
    end
end
