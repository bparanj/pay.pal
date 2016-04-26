class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.datetime :checked_out_at

      t.timestamps
    end
  end
end
