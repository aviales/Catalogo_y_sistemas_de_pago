class CreateStripes < ActiveRecord::Migration[6.0]
  def change
    create_table :stripes do |t|

      t.timestamps
    end
  end
end
