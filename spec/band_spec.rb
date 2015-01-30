require("spec_buddy")

describe(Band) do
  it { should have_many(:venues) }

  it("validates the presence of a name") do
    band = Band.new({:name => ""})
    expect(band.save()).to eq(false)
  end
end
