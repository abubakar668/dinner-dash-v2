# frozen_string_literal: true

class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.integer :quantity, null: false
      t.references :item, foreign_key: true
      t.references :cart, foreign_key: true
      t.integer :total
      t.integer :unit_price

      t.timestamps
    end
  end
end
