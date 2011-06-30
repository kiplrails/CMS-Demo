class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name, :address, :city
      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
