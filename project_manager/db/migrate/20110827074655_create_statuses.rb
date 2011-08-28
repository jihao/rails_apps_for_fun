class CreateStatuses < ActiveRecord::Migration
  def self.up
    create_table :statuses do |t|
      t.string :title, :null => false
      t.integer :position, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :statuses
  end
end
