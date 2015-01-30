class AddBandIdColumnToVenuesTable < ActiveRecord::Migration
  def change
    add_column(:venues, :band_id, :integer)
  end
end
