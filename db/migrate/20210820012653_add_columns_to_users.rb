class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :display_name, :string, null: false, default: "", after: :id
    add_column :users, :profile, :text, after: :email
  end
end
