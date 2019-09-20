class IceCream < ApplicationRecord

  # Terminal: IceCream.first.users
  has_many :ice_cream_orders
  has_many :users, through: :ice_cream_orders

end
