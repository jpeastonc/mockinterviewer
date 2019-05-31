class QuestionTip < ApplicationRecord
  # Direct associations

  belongs_to :question,
             :counter_cache => :tips_count

  # Indirect associations

  # Validations

end
