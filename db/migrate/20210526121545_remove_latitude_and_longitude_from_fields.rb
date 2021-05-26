class RemoveLatitudeAndLongitudeFromFields < ActiveRecord::Migration[6.0]
  def change
    remove_column :fields, :latitude
    remove_column :fields, :longitude
  end
end
