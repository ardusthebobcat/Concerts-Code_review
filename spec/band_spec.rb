require('spec_helper')

describe(Band) do
  it("Checks ActiveRecord success") do
    test_band = Band.create({:name => "Dethklok", :description => "A multi-krillion dollar death-metal band, famed for their totally metal music and for awakening a troll that destroyed Norway.", :album => "The Doomstar Requiem"})
    expect(test_band.name()).to(eq("Dethklok"))
  end

  it("tests name-presence validation") do
    test_band = Band.new({:name => "", :description => "A multi-krillion dollar death-metal band, famed for their totally metal music and for awakening a troll that destroyed Norway.", :album => "The Doomstar Requiem"})
    expect(test_band.save()).to(eq(false))
  end
end
