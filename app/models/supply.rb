# == Schema Information
#
# Table name: supplies
#
#  id         :integer          not null, primary key
#  uuid       :string
#  start_date :datetime
#  end_date   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Supply < ActiveRecord::Base
  
  #belongs_to :devices
  belongs_to :devices, foreign_key: :uuid
end
