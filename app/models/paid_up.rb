class PaidUp < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_and_belongs_to_many :groups, join_table: 'groups_paid_ups',
                                   foreign_key: 'paid_up_id',
                                   association_foreign_key: 'group_id'

  validates :name, presence: true, length: { maximum: 20 }
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
