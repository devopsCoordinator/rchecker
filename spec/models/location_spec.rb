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

require 'rails_helper'

RSpec.describe Location, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
