class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :number
      t.string :total
      t.string :state

      t.timestamps
    end
  end
end
