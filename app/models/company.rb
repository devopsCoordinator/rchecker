# == Schema Information
#
# Table name: companies
#
#  id                :integer          not null, primary key
#  name              :string
#  area_id           :integer
#  representative_id :integer
#  memo              :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Company < ActiveRecord::Base
  has_one :representatives
  has_many :locations
  has_many :devices, through: :locations
end
