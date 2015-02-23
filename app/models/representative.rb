# == Schema Information
#
# Table name: representatives
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  mobile     :string
#  area_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Representative < ActiveRecord::Base
	belongs_to :companies
	has_one :areas
end
