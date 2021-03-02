class ChangeColumnNameOnInstruments < ActiveRecord::Migration[6.0]
  def change
    rename_column :instruments, :price, :price_per_day
  end
end
