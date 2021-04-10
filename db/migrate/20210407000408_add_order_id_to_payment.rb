class AddOrderIdToPayment < ActiveRecord::Migration[6.0]
  def change
    add_column :payments, :order_id, :integer
  end
end
