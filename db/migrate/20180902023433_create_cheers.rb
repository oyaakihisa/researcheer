class CreateCheers < ActiveRecord::Migration
  def change
    create_table :cheers do |t|
      t.integer   :user_id
      t.integer   :researcher_id
      t.integer   :money
      t.text      :message
      t.timestamps 
    end
  end
end
