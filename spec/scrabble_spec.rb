require ('rspec')
require ('scrabble')
require ('pry')

describe('Scrabble#score') do

  it ("returns a scrabble score for a letter") do
    letter =  Scrabble.new("a")
    expect(letter.score()).to(eq(1))
  end

  it ("returns a score for a upper and lower case letter") do
    letter = Scrabble.new("A")
    expect(letter.score()).to(eq(1))
  end

  it ("adds 2 to score for letters 'd' and 'g'") do
    word = Scrabble.new("dog")
    expect(word.score()).to(eq(5))
  end

  it ("adds 3 to score for letters 'b' 'c' 'm' and 'p'") do
    word = Scrabble.new("bcamp")
    expect(word.score()).to(eq(13))
  end

  it ("adds 4 to score for letters 'f' 'h' 'v' 'w' and 'y'") do 
    word = Scrabble.new("fhvwy")
    expect(word.score()).to(eq(20))
  end

  it ("adds 5 to score for the letter k") do
    word = Scrabble.new('book')
    expect(word.score()).to(eq(10))
  end

  it ("adds 8 to score for the letter 'j' and 'x'") do
    word = Scrabble.new('jinx')
    expect(word.score()).to(eq(18))
  end

  it ("adds 10 to score for the letter 'q' and 'z'") do
    word = Scrabble.new('quiz')
    expect(word.score()).to(eq(22))
  end

end