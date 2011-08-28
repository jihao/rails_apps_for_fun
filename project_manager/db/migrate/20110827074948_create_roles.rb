class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.integer :person_id, :null => false
      t.integer :project_id, :null => false
      t.integer :status_id, :null => false, :default=>1
      t.string :title, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :roles
  end
end
