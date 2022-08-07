class CreatePrizes < ActiveRecord::Migration[7.0]
  def change
    create_table :prizes do |t|
      t.string :name, null: false
      t.string :description
      t.integer :win_payout, null: false
      t.integer :lose_payout, default: 0
      t.integer :activation_status, default: 0

      t.timestamps
    end
  end
end
