class AddFirstnamekanaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstnamekana, :string
  end
end
