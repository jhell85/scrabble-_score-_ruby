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

  it ("adds 2 to score for words with 'd' and 'g' ") do
    word = Scrabble.new("dog")
    expect(word.score()).to(eq(5))
  end

end