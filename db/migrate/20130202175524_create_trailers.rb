class CreateTrailers < ActiveRecord::Migration
  def change
    create_table :trailers do |t|
      t.string :unique_id
      t.integer :driver_id
      t.integer :truck_id
      t.string :lot_location

      t.timestamps
    end
  end
end
