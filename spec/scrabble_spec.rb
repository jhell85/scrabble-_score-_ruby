require ('rspec')
require ('scrabble')

describe('Scrabble#score') do
  # it ("returns a scrabble score for a letter") do
  #   letter =  Scrabble.new("a")
  #   expect(letter.score()).to(eq(1))
  # end

  it ("returns a score for a upper and lower case letter") do
    letters = Scrabble.new("A")
    expect(letters.score()).to(eq(1))
  end
end