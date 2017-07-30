class CreateEntries < ActiveRecord::Migration[5.1]
  def up
    create_table :entries do |t|
      t.string "user_login", :limit => 25, :null => false
      t.float "time_entry"
      t.text "notes"
      t.timestamps
    end
  end
  def down
    drop_table :entries
  end
end
