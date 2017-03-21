require('rspec')
require('r_p_s')
require('pry')

describe('String#beats?') do
  it("returns true if rock is the object and scissors is the argument") do
    expect("rock".beats?("scissors")).to(eq(true))
  end

  it("returns false if rock is the object and paper is the argument") do
    expect("rock".beats?("paper")).to(eq(false))  
  end

end