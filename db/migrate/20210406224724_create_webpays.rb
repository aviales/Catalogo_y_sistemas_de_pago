class CreateWebpays < ActiveRecord::Migration[6.0]
  def change
    create_table :webpays do |t|

      t.timestamps
    end
  end
end
