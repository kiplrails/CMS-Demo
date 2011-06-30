class Company < ActiveRecord::Base
  validates_presence_of :name, :address, :city
  has_many :drivers
end
