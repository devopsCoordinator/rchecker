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
  has_many :supplies, class_name: "Supply",dependent: :destroy
  has_many :locations
  has_many :companies, through: :locations
end
