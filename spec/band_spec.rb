require("spec_buddy")

describe(Band) do
  it { should have_many(:venues) }
end
