class AlterSizeSubmissionContent < ActiveRecord::Migration
  def change
    change_table :submissions do |t|
      t.remove :content
      t.text :content
    end
  end
end
