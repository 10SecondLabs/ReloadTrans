class Driver < ActiveRecord::Base
  has_one  :truck
  attr_accessible :first_name, :last_name, :phone
end
