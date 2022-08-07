class CreateAuctionItems < ActiveRecord::Migration[7.0]
  def change
    create_table :auction_items do |t|
      t.string :name, null: false
      t.string :description
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
