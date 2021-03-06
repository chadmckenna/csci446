class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.datetime :last_login_at
      t.string :first_name
      t.string :last_name
      t.string :email
      #t.integer :role_id
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
