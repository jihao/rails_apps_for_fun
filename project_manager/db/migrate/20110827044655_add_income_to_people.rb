class AddIncomeToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :income, :float
  end

  def self.down
    remove_column :people, :income
  end
end
