class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one :wallet
  accepts_nested_attributes_for :wallet
  
  enum role: [:standard, :admin]

  ADMIN_EMAIL_LIST = [
    'jakeod99@gmail.com',
    'odonnell.rick@gmail.com'
  ]

  after_initialize :set_role, :if => :new_record?

  def set_role
    if self.email.in? ADMIN_EMAIL_LIST
      self.role = :admin
    else 
      self.role = :standard
    end
  end

  def with_wallet
    build_wallet if wallet.nil?
    self
  end
end
