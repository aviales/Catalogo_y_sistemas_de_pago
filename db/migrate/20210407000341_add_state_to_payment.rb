class AddStateToPayment < ActiveRecord::Migration[6.0]
  def change
    add_column :payments, :state, :string
    add_column :payments, :total, :decimal
  end
end
