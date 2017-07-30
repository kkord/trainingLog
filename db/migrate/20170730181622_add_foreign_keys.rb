class AddForeignKeys < ActiveRecord::Migration[5.1]
  def change

    add_column :entries, :user_id, :int
    add_column :entries, :subject_id, :int
    add_column :entries, :resource_id, :int

    add_column :subjects, :resource_id, :int

    add_column :resources, :subject_id, :int

    add_column :users, :entry_id, :int

  end
end
