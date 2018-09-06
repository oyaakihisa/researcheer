class AddFamilynamekanaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :familynamekana, :string
  end
end
