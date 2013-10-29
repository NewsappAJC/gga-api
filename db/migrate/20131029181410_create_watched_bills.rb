class CreateWatchedBills < ActiveRecord::Migration
  def change
    create_table :watched_bills do |t|
      t.integer :bill_id
      t.text :description

      t.timestamps
    end
  end
end
