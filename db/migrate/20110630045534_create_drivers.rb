class CreateDrivers < ActiveRecord::Migration
  def self.up
    create_table :drivers do |t|
      t.string :name
      t.integer :company_id
      t.timestamps
    end

    add_index :drivers, :company_id
  end

  def self.down
    drop_table :drivers
  end
end
