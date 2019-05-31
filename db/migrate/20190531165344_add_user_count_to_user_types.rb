class AddUserCountToUserTypes < ActiveRecord::Migration[5.1]
  def change
    add_column :user_types, :users_count, :integer
  end
end
