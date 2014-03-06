require('rspec')
require('english_calculator')

describe("english_calculator") do
  it("will add two numbers entered as a string") do
    english_calculator("what is 2 plus 5").should(eq(7))
  end 
end
