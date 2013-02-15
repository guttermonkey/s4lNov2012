class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.string :link
      t.text :synopsis

      t.timestamps
    end
  end
end