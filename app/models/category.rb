class Category < ApplicationRecord
  # Direct associations

  has_many   :question_categories,
             :dependent => :destroy

  # Indirect associations

  has_many   :questions,
             :through => :question_categories,
             :source => :question

  # Validations

end
