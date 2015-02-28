# == Schema Information
#
# Table name: supplies
#
#  id           :integer          not null, primary key
#  uuid         :string
#  start_date   :datetime
#  end_date     :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  elapsed_time :float
#

class Supply < ActiveRecord::Base
  belongs_to :device,class_name: "Device",primary_key: :uuid, foreign_key: :uuid
end
