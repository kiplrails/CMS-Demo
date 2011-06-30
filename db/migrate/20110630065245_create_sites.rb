class CreateSites < ActiveRecord::Migration
  def self.up
    create_table :sites do |t|
      t.string :name
    end

    add_column :companies, :site_id, :integer
    add_column :drivers, :site_id, :integer
  end

  def self.down
    drop_table :sites
  end
end
