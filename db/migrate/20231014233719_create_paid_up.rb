class CreatePaidUp < ActiveRecord::Migration[7.0]
  def change
    create_table :paid_ups do |t|
      t.string :name
      t.integer :amount, default: 0
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
