class Group < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_and_belongs_to_many :paid_ups, foreign_key: 'paid_up_id'

  validates :name, presence: true, length: { maximum: 15 }
  validates :icon, presence: true
end
