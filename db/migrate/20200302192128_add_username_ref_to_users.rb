class AddUsernameRefToUsers < ActiveRecord::Migration[5.2]
  def change
    add_index :users, :username, unique: true
  end
end
