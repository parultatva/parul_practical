class AddFollowerIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :follower_id, :integer
  end
end
