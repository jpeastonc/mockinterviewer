class AddQuestionCategoryCountToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :question_categories_count, :integer
  end
end
