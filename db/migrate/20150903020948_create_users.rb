class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :signature
      t.string :crypted_password
      t.string :password_salt
      t.string :email
      t.string :openid_identifier
      t.string :persistence_token
      t.integer :login_count

      t.timestamps null: false
    end
    add_index :users, :email, unique: true
  end
end
