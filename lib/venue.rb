class Venue < ActiveRecord::Base
  belongs_to(:band)
  validates(:name, :presence => true)
  validates(:location, :presence => true)
end
