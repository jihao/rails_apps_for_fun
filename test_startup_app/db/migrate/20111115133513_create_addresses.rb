class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :description
      t.string :postcode
      t.references :client

      t.timestamps
    end
    add_index :addresses, :client_id
  end
end
