class CreateClubFundActivities < ActiveRecord::Migration
  def change
    create_table :club_fund_activities do |t|
      t.integer :type
      t.float :amount, :default => 0.0

      t.timestamps null: false
    end
  end
end
