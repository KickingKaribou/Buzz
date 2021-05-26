class CreateFields < ActiveRecord::Migration[6.0]
  def change
    create_table :fields do |t|
      t.string :name
      t.string :category
      t.float :size
      t.float :rating
      t.string :address
      t.string :latitude
      t.string :longitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
