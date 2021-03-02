class AddColumnsToReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :status, :string
    add_reference :reservations, :instrument
  end
end
