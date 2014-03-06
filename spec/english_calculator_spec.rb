require('rspec')
require('english_calculator')

describe("english_calculator") do
  it("will add two numbers entered as a string") do
    english_calculator("what is 2 plus 5").should(eq(7))
  end 
  it("will add two double digit numbers entered as a string") do
    english_calculator("what is 25 plus 25").should(eq(50))
  end 
  it("will subtract a digit number entered as a string") do
    english_calculator("what is 25 minus 24").should(eq(1)) 
  end
end
