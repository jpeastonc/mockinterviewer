class Evaluation < ApplicationRecord
  # Direct associations

  belongs_to :user_question

  # Indirect associations

  has_one    :user,
             :through => :user_question,
             :source => :user

  # Validations

end
