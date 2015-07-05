class AddVisualToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :visual, :string
  end
end
