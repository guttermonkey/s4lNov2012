class AddColumnsToSubmissions < ActiveRecord::Migration
  def change
    change_table :submissions do |t|
      t.string :pic
      t.string :name
    end
  end
end
