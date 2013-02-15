class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :birthday, :string
    add_column :users, :gender, :string
  end
end
