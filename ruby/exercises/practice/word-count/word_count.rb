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

    def limpa(st, sp)
      r = ''
      st.each_char do |s|
        if sp.include?(s)
          r += ' '
        else
          r += s
        end
      end
      r
    end
  
    def word_count()
      words = limpa(@phrase, ',!.&@$%:^')

      words = words.split

      h = Hash.new

      words.each do |s|

        s2 = s.strip
        if (s2[0] == "'") 
          s2[0] = ' '
        end
        if (s2[-1] == "'")
          s2[-1] = ' '
        end
        r = s2.strip
        
        if r != ""
          if h.include?(r)
            h[r] += 1
          else
            h[r] = 1
          end
        end  
      end

      h

    end
end
