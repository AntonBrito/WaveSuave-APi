class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :info, :start_date, :end_date
  # has_one :user
  # has_one :provider
end
