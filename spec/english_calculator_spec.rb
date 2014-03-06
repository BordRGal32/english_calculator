require('rspec')
require('english_calculator')

describe("english_calculator") do
  it("will add two numbers entered as a string") do
    english_calculator("what is 2 plus 5").should(eq([7]))
  end 
  it("will add two double digit numbers entered as a string") do
    english_calculator("what is 25 plus 25").should(eq([50]))
  end 
  it("will subtract a digit number entered as a string") do
    english_calculator("what is 25 minus 24").should(eq([1])) 
  end
  it('will multiply two single digit numbers entered as a string') do
    english_calculator("what is 4 times 9").should(eq([36]))
  end
  it('will multiply two double digit numbers entered as a string') do
    english_calculator("what is 15 times 10").should(eq([150]))
  end
  it('will divide two single digit numbers') do
    english_calculator('what is 20 divided by 4').should(eq([5]))
  end
  it('will divide two float numbers') do
    english_calculator('what is 20.4 divided by 4.1').should(eq([5]))
  end
  it("will find the modulo of two numbers") do
    english_calculator("what is 7 modulo 2").should(eq([1]))
  end
  it("will find powers of a number") do
    english_calculator("what is 2 to the 5th power").should(eq([32]))
  end
  it("will find the result of multiple operations") do
    english_calculator("what is 3 times 4 plus 2").should(eq([14]))
  end
  it("will answer multiple questions") do
    english_calculator("what is 3 times 4? what is 3 plus 4").should(eq([12,7]))
  end
  it("will follow order of operations") do
    english_calculator("What is 3 plus 5 times 2").should(eq([13]))
  end
end
