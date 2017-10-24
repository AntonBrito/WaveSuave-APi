class Provider < ApplicationRecord
  belongs_to :user
  # belongs_to :appointment
  has_many :events, dependent: :destroy
end
