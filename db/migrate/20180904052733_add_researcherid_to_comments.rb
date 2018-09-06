class AddResearcheridToComments < ActiveRecord::Migration
  def change
    add_column :comments, :researcher_id, :integer
  end
end
