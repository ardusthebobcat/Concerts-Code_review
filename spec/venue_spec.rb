require('spec_helper')

describe(Venue) do
  it("checks name-presence validation") do
    test_venue = Venue.new({:name => "", :city => "Cuyahoga Falls", :state =>"OH"})
    expect(test_venue.save()).to(eq(false))
  end

  it("tests name-titlecase callback") do
    test_venue = Venue.create({:name => "blossom music center", :city => "Cuyahoga Falls", :state =>"OH"})
    expect(test_venue.name()).to(eq("Blossom Music Center"))
  end

  it("tests name-state_case callback") do #just in case
    test_venue = Venue.create({:name => "Red Rocks Amphitheatre", :city => "Morrison", :state=> "co"})
    expect(test_venue.state()).to(eq("CO"))
  end


end
