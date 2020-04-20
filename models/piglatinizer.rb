class PigLatinizer
  attr_reader :text
  
  def initialize
    @text = text
  end
  
  def split_phrase
    words = @text.split(" ")
  end
  
  def piglatinize
    words.each do |word|
      if word[0].include?(/[aeoui]/)
        new_word = word + "way"
      end
      if word[0].include?(/[bcdfghjklmnpqrstvwxyz]/)
        first_letter = word[0]
        alt_word = word[1...-1]
        new_word = alt_word + first_letter + "ay"
      end
      word = new_word
    end
    words
  end
end