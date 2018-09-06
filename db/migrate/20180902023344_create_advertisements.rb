class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.integer    :researcher_id
      t.text       :text
      t.timestamps
    end
  end
end
