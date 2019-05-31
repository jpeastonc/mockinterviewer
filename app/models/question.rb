class Question < ApplicationRecord
  # Direct associations

  has_many   :question_categories,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
