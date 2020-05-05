class Scrabble

  def initialize(word)
    @word = word
  end

  def score
    score = 0
    letters = @word.downcase.split("")
    letters.each do |letter|
      if letter.index(/[aeiou]/) 
        score += 1
      elsif letter.index(/[dg]/)
        score += 2
      elsif letter.index(/[bcmp]/)
        score += 3
      elsif letter.index(/[fhvwy]/)
        score += 4
      end
    end
    score
  end

end

