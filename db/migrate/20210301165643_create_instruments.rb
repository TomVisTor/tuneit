class CreateInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :family
      t.boolean :availability
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
