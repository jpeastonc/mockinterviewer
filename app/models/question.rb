class Question < ApplicationRecord
  # Direct associations

  has_many   :reflexion_questions,
             :dependent => :destroy

  has_many   :user_questions,
             :dependent => :destroy

  has_many   :tips,
             :class_name => "QuestionTip",
             :dependent => :destroy

  has_many   :question_categories,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
