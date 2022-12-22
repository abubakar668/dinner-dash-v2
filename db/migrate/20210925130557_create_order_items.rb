# frozen_string_literal: true

class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :quantity, null: false
      t.integer :total, null: false
      t.integer :unit_price, null: false
      t.references :item, foreign_key: true
      t.references :order, foreign_key: true
      t.timestamps
    end
  end
end
