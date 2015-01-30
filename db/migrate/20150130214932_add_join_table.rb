class AddJoinTable < ActiveRecord::Migration
  def change
    create_table(:bands_venues) do |t|
      t.column(:band_ids, :integer)
      t.column(:venue_ids, :integer)
    end
  end
end
