class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :stock, default: 0
      t.decimal :price
      t.string :sku, null: false
      t.references :category, polymorphic: true

      t.timestamps
    end
  end
end
