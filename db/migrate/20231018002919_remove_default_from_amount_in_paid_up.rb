class RemoveDefaultFromAmountInPaidUp < ActiveRecord::Migration[7.0]
  def change
    change_column_default :paid_ups, :amount, nil
  end
end
