class AddTipCountToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :tips_count, :integer
  end
end
