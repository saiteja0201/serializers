class UserlistSerializer < ActiveModel::Serializer
  attributes :id,:name, :email, :number, :city
end
