class AddWalletToAuctionItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :auction_items, :wallet, null: false, foreign_key: true
  end
end
