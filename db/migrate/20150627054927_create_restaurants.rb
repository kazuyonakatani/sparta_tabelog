class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :title
      t.integer :tel
      t.string :address
      t.string :web

      t.timestamps null: false
    end
  end
end
