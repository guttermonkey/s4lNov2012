class RemoveColumnsFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :birthday
    remove_column :users, :locale
  end

  def down
    add_column :users, :birthday
    add_column :users, :locale
  end
end
