class AddVenueIdsToBandsTableRemoveJoinTable < ActiveRecord::Migration
  def change
    add_column(:bands, :venue_ids, :integer)

    drop_table(:bands_venues)
  end
end
