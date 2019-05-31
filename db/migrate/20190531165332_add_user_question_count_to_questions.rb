class AddUserQuestionCountToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :user_questions_count, :integer
  end
end
