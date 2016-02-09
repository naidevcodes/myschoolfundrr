class ChangeDateFormatInMyTable < ActiveRecord::Migration
   def up
    change_column :fundrrs, :start_date, :datetime
   end

  def down
    change_column :fundrrs, :start_date, :date
  end
end
