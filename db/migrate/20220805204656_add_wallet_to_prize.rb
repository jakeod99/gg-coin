class AddWalletToPrize < ActiveRecord::Migration[7.0]
  def change
    add_reference :prizes, :wallet, null: false, foreign_key: true
  end
end
