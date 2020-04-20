class PigLatinizer
  attr_accessor :text
  
  def initialize(text = "")
    @text = text
  end
  

  def split_phrase
    words = @text.split(" ")
  end
  
  def piglatinize(text)
    words = text.split(" ")
    result = []
    words.each do |word|
      n = 0
      consonant = -1
      while word[n].match(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ])
        consonant = n 
        n += 1 
      end
      
      if consonant > -1
        cons = word[0..consonant]
        start = consonant + 1
        alt_word = word[..-1]
      
       word_v = word[0].include?(/[aeouiAIEOU]/)
       #word_v = word[0].scan(/[aeouiAIEOU]/).count
      if word_v 
        new_word = word + "way"
        result << new_word
      end
      if word_v == 0
        first_letter = word[0]
        alt_word = word[1..-1]
        new_word = alt_word + first_letter + "ay"
        result << new_word
      end
      word = new_word
    end
    result.join(' ')
  end
end