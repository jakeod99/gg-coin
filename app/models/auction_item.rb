class AuctionItem < ApplicationRecord
  has_one :wallet

  enum status: [:listed, :unlisted, :sold]

  after_initialize :set_default_status, :if => :new_record?

  def set_default_status
    self.activation_status ||= :listed
  end

  def list!
    self.activation_status = :listed
  end

  def unlist!
    self.activation_status = :unlisted
  end

  def sell!
    self.activation_status = :sold
  end
end
