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
  belongs_to :representative, class_name: "Representative", foreign_key: "representative_id"
  belongs_to :area,class_name: "Area", foreign_key: "area_id"
  has_many :locations,class_name: "Location", foreign_key: "company_id"
  has_many :devices, through: :locations
end
