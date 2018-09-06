class CreateResearchers < ActiveRecord::Migration
  def change
    create_table :researchers do |t|
      t.integer  :user_id
      t.text     :image
      t.text     :firstname
      t.text     :lastname
      t.text     :firstnamekana
      t.text     :lastnamekana
      t.text     :belonging
      t.text     :field
      t.text     :fielddata
      t.timestamps 
    end
  end
end
