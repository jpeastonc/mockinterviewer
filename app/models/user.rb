class User < ApplicationRecord
  # Direct associations

  belongs_to :user_type,
             :counter_cache => true

  has_many   :user_questions,
             :dependent => :destroy

  # Indirect associations

  has_many   :evaluations,
             :through => :user_questions,
             :source => :evaluation

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
