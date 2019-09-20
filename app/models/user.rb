class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }

  # Terminal: User.first.ice_creams
  has_many :ice_cream_orders, :dependent => :destroy
  has_many :ice_creams, through: :ice_cream_orders

end
