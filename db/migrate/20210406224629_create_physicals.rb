class CreatePhysicals < ActiveRecord::Migration[6.0]
  def change
    create_table :physicals do |t|
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
