class Truck < ActiveRecord::Base
  attr_accessible :driver_id, :lot_location, :unique_id
  has_one :trailer
  belongs_to :driver
end
