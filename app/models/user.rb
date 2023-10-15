class User < ApplicationRecord
  has_many :paid_ups, foreign_key: :author_id
  has_many :groups, foreign_key: :user_id

  validates :name, presence: true
end
