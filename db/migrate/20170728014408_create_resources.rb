class CreateResources < ActiveRecord::Migration[5.1]
  def up
    create_table :resources do |t|
      t.string "name", :limit => 100, :null => false
      t.string "hyperlink"
      t.text "description"
      t.timestamps
    end
  end

  def down
    drop_table :resources
  end
end
