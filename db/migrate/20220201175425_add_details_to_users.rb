class AddDetailsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :age, :integer, null: false
    add_column :users, :address, :string, null: false
    add_column :users, :user_type, :integer, null: false, default: 0
    add_column :users, :about_me, :text, null: false
  end
end
