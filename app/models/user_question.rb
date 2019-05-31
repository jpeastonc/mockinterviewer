class UserQuestion < ApplicationRecord
  # Direct associations

  has_one    :evaluation,
             :dependent => :destroy

  belongs_to :user,
             :counter_cache => true

  belongs_to :question,
             :counter_cache => true

  # Indirect associations

  # Validations

end
