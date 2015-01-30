require("spec_buddy")

describe(Venue) do
  it { should have_and_belong_to_many(:bands) }

  it("validates the presence of a name") do
    venue = Venue.new({:name => ""})
    expect(venue.save()).to eq(false)
  end

  it("validates the presence of a location") do
    venue = Venue.new({:location => ""})
    expect(venue.save()).to eq(false)
  end

  it("capitalizes each word of the venue") do
    venue = Venue.create({ :name => "the venue", :location => "the place" })
    expect(venue.name()).to eq("The Venue")
  end

end
