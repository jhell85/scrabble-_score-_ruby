require ('rspec')
require ('scrabble')

describe('Scrabble#score') do
 it ("returns a scrabble score for a letter") do
  scrabble =  Scrabble.new("a")
  expect(scrabble.score()).to(eq(1))
 end
end