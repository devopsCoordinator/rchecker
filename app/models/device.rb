class Device < ActiveRecord::Base
  has_many :supply
  has_many :locations
  has_many :companies, through: :locations
end
