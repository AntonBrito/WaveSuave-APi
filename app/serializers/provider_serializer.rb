class ProviderSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :family_name, :email, :specialty
  # has_one :user
  # has_one :appointment
  # has_one :event
end
