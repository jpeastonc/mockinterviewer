class UserQuestion < ApplicationRecord
  # Direct associations

  belongs_to :question,
             :counter_cache => true

  # Indirect associations

  # Validations

end
