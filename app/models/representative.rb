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
  belongs_to :company, class_name: "Company", foreign_key: :representative_id
  belongs_to :area, class_name: "Area", foreign_key: :area_id
end
