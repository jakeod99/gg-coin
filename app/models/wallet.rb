class Wallet < ApplicationRecord
  belongs_to :user
  belongs_to :prize
  belongs_to :auction_item
  has_and_belongs_to_many :transactions, 
    class_name: "Wallet", 
    join_table: :transactions, 
    foreign_key: :sender_id, 
    association_foreign_key: :recipient_id

  enum limit_status: [:limited, :limitless]
end
