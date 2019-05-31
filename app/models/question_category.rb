class QuestionCategory < ApplicationRecord
  # Direct associations

  belongs_to :category

  belongs_to :question,
             :counter_cache => true

  # Indirect associations

  # Validations

end
