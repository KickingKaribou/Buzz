class AddPriceToField < ActiveRecord::Migration[6.0]
  def change
    add_column :fields, :price, :float
  end
end
