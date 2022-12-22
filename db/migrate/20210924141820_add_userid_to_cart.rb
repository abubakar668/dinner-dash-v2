# frozen_string_literal: true

class AddUseridToCart < ActiveRecord::Migration[5.2]
  def change
    add_column :carts, :user_id, :string
  end
end
