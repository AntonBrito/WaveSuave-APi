# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :appointments, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :providers, dependent: :destroy
end
