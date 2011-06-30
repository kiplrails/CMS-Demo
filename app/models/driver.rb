class Driver < ActiveRecord::Base
  belongs_to :company
  validates_presence_of :name, :company_id
end
