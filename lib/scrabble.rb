class Scrabble

  def initialize(word)
    @word = word
  end

  def score
    score = 0
    @word.downcase!.split("").each do |letter|
      if @word.index(/[aeiou]/) 
        score += 1
      end
    end
    score
  end

end

