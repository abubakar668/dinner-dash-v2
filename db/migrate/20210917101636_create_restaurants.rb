# frozen_string_literal: true

class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :image
      t.timestamps
    end
    add_index :restaurants, :name, unique: true
  end
end
