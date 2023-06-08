class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :phone, :string
    add_column :users, :about, :text
    add_column :users, :admin, :boolean, default: false
  end
end
