class CreateFundrrs < ActiveRecord::Migration
  def change
    create_table :fundrrs do |t|
      t.string :title
      t.text :description
      t.date :start_date # Changed to datetime
      t.integer :duration
      t.decimal :fundrr_goal, precision: 7, scale: 2
      
      t.timestamps
    end
  end
end
