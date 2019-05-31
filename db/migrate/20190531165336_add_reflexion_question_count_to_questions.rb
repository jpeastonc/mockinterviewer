class AddReflexionQuestionCountToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :reflexion_questions_count, :integer
  end
end
