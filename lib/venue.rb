class Venue < ActiveRecord::Base
  has_and_belongs_to_many(:bands)
  validates(:name, :location, :presence => true)
  before_save(:titleize)

  scope(:not_done, -> do
    where({:done => false})
  end)

private

  define_method(:titleize) do
    new_titles = []
    names = self.name.downcase.split(" ")
    names.each do |word|
      new_titles.push(word.capitalize!)
    end
    self.name=(new_titles.join(" "))
  end

end
