class Scrabble

  def initialize(word)
    @word = word
  end

  def score
    score = 0
    letters = @word.downcase.split("")
    letters.each do |letter|
      if letter.index(/[aeioulnrst]/) 
        score += 1
      elsif letter.index(/[dg]/)
        score += 2
      elsif letter.index(/[bcmp]/)
        score += 3
      elsif letter.index(/[fhvwy]/)
        score += 4
      elsif letter.index("k")
        score += 5
      elsif letter.index(/[jx]/)
        score += 8
      elsif letter.index(/[qz]/)
        score += 10
      end
    end
    score
  end

end

