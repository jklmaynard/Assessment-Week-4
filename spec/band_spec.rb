require("spec_buddy")

describe(Band) do
  it { should have_and_belong_to_many(:venues) }

  it("validates the presence of a name") do
    band = Band.new({:name => ""})
    expect(band.save()).to eq(false)
  end

  it("capitalizes each word of the band") do
    band = Band.create({ :name => "the band" })
    expect(band.name()).to eq("The Band")
  end

end
