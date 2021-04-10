class CreatePaypals < ActiveRecord::Migration[6.0]
  def change
    create_table :paypals do |t|

      t.timestamps
    end
  end
end
