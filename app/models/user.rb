class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one :wallet
  
  enum role: [:standard, :admin]

  ADMIN_EMAIL_LIST = [
    'jakeod99@gmail.com',
    'odonnell.rick@gmail.com'
  ]

  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    if self.email.in? ADMIN_EMAIL_LIST
      self.role ||= :admin
    else 
      self.role ||= :standard
    end
  end
end
