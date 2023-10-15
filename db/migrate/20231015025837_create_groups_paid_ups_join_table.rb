class CreateGroupsPaidUpsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :groups, :paid_ups
  end
end
