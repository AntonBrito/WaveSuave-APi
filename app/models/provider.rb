class Provider < ApplicationRecord
  belongs_to :user
  # belongs_to :appointment
  has_many :users, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :appointments, dependent: :destroy
end
