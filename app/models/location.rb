# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  comapny_id :integer
#  device_id  :integer
#  department :string
#  location   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ActiveRecord::Base
  belongs_to :companies
  belongs_to :devices
end
