require("spec_buddy")

describe(Venue) do
  it { should belong_to(:band) }
end
