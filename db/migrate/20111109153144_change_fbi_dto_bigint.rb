class ChangeFbiDtoBigint < ActiveRecord::Migration
  def up
    change_column :users, :facebook_id, 'bigint'
  end

  def down
  end
end
