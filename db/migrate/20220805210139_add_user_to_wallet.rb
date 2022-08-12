class AddUserToWallet < ActiveRecord::Migration[7.0]
  def change
    add_reference :wallets, :user, foreign_key: true
  end
end
