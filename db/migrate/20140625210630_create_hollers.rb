class CreateHollers < ActiveRecord::Migration
  def change
    create_table :hollers do |t|
      t.text :message
      t.integer :user_id
      t.timestamps
    end
  end
end
