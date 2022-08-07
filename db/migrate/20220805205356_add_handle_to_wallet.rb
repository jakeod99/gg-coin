class AddHandleToWallet < ActiveRecord::Migration[7.0]
  def change
    add_column :wallets, :handle, :string
    add_index :wallets, :handle, unique: true
  end
end
