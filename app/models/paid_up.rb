class PaidUp < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_and_belongs_to_many :groups, foreign_key: :group_id

  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_or_equal_to: 0 }
end
