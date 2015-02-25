# == Schema Information
#
# Table name: devices
#
#  id         :integer          not null, primary key
#  uuid       :string
#  model_type :string
#  memo       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Device < ActiveRecord::Base
  has_many :supplies, foreign_key: :uuid, dependent: :destroy
  has_many :locations
  has_many :companies, through: :locations
end
