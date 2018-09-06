class AddResearcherornotToUsers < ActiveRecord::Migration
  def change
    add_column :users, :researcherornot, :integer
  end
end
