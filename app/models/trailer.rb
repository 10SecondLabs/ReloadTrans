class Trailer < ActiveRecord::Base
  attr_accessible :driver_id, :lot_location, :truck_id, :unique_id
  belongs_to :truck
end
