class Transaction < ApplicationRecord
  has_one :from, class: "Wallet"
  has_one :to, class: "Wallet"

  enum status: [:pending, :withdrawn, :exercised]
end
