class CreateOneclicks < ActiveRecord::Migration[6.0]
  def change
    create_table :oneclicks do |t|

      t.timestamps
    end
  end
end
