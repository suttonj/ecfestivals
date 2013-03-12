class AddMultipleIndexForMicroposts < ActiveRecord::Migration
  def up
  	add_index :microposts, [:user_id, :created_at]
  end

  def down
  	remove_index :microposts, [:user_id, :created_at]
  end
end
