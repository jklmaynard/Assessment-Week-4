class Venue < ActiveRecord::Base
  belongs_to(:band)
end
