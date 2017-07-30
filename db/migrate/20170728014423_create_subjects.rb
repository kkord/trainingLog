class CreateSubjects < ActiveRecord::Migration[5.1]
  def up
    create_table :subjects do |t|
      t.string "name", :limit => 100, :null => false
      t.text "description"
      t.timestamps
    end
  end

  def down
    drop_table :subjects

  end
end
