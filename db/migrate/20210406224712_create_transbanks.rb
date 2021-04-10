class CreateTransbanks < ActiveRecord::Migration[6.0]
  def change
    create_table :transbanks do |t|
      t.references :category, polymorphic: true
      t.timestamps
    end
  end
end
