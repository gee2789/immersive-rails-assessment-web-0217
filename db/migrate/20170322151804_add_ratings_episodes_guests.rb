class AddRatingsEpisodesGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :episodes_guests, :rating, :integer
  end
end
