class CreateCartProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_products do |t|
      t.references :cart
      t.references :product
      t.float :product_unit_price, precision: 15, scale: 3, default: 0.0
      t.integer :product_quantity, default: 1
      t.timestamps
    end
  end
end
