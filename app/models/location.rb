# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  company_id :integer
#  device_id  :integer
#  department :text
#  place      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ActiveRecord::Base
  belongs_to :company, class_name: "Company", foreign_key: "company_id"
  belongs_to :device, class_name: "Device", foreign_key: "device_id"
end
