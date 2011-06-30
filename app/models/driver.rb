class Driver < ActiveRecord::Base
  validates_presence_of :name, :company_id
end
