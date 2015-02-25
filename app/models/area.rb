# == Schema Information
#
# Table name: areas
#
#  id         :integer          not null, primary key
#  name       :string
#  memo       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Area < ActiveRecord::Base
  belongs_to :company, class_name: "Company", foreign_key: "area_id"
  belongs_to :representative, class_name: "Representative", foreign_key: "area_id"

end
