require("spec_buddy")

describe(Venue) do
  it { should belong_to(:band) }

  it("validates the presence of a name") do
    venue = Venue.new({:name => ""})
    expect(venue.save()).to eq(false)
  end

  it("validates the presence of a location") do
    venue = Venue.new({:location => ""})
    expect(venue.save()).to eq(false)
  end
end
