class CreateUsers < ActiveRecord::Migration[5.1]
  def up
    create_table :users do |t|
      t.string "login", :limit => 25, :null => false
      t.string "password", :limit => 25, :null => false
      t.string "email", :limit => 50
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
