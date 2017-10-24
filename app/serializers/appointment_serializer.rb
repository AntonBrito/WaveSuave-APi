class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :lastname, :email, :date, :providers_id
  # has_one :user
  # has_one :provider
end
