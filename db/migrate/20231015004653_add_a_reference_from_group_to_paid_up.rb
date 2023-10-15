class AddAReferenceFromGroupToPaidUp < ActiveRecord::Migration[7.0]
  def change
    add_reference :groups, :paid_up, foreign_key: true
  end
end
