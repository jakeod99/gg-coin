class Prize < ApplicationRecord
  has_one :wallet

  enum activation_status: [:active, :inactive]

  after_initialize :set_default_activation_status, :if => :new_record?

  def set_default_activation_status
    self.activation_status ||= :active
  end

  def activate!
    self.activation_status = :active
  end

  def deactivate!
    self.activation_status = :inactive
  end
end
