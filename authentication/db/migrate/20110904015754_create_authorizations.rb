class CreateAuthorizations < ActiveRecord::Migration
  def self.up
    create_table :authorizations do |t|
      t.string :provider
      t.string :uid
      t.integer :user_id
      t.string :access_token
      t.string :access_token_secret

      t.timestamps
    end
  end

  def self.down
    drop_table :authorizations
  end
end
