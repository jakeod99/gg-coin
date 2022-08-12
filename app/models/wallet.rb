class Wallet < ApplicationRecord
  belongs_to :user, optional: true
  
  has_and_belongs_to_many :transfers, 
    class_name: "Wallet", 
    join_table: :transfers, 
    foreign_key: :sender_id, 
    association_foreign_key: :recipient_id

  enum limit_status: [:limited, :limitless]
end
