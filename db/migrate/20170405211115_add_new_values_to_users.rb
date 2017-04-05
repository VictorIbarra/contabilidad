class AddNewValuesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :age, :integer
    add_column :users, :lastname, :string
    add_column :users, :address, :string
    add_column :users, :job, :string
    add_column :users, :civil_status, :string
    add_column :users, :country, :string
  end
end
