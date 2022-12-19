class AddSpotlightPhotoToBusinesses < ActiveRecord::Migration[7.0]
  def change
    add_column :businesses, :spotlight_photo, :string
  end
end
