class IceCreamOrderSerializer < ActiveModel::Serializer
  attributes :id
  has_one :User
  has_one :IceCream
end
