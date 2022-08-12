class CreateTransfers < ActiveRecord::Migration[7.0]
  def change
    create_table :transfers do |t|
      t.references :sender, null: false, foreign_key: { to_table: 'wallets' }
      t.references :recipient, null: false, foreign_key: { to_table: 'wallets' }
      t.integer :amount, null: false
      t.integer :status, default: 0
      t.string :description

      t.timestamps
    end
  end
end
