class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :unique_id
      t.integer :driver_id
      t.string :lot_location

      t.timestamps
    end
  end
end
