class AddUserQuestionCountToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user_questions_count, :integer
  end
end
