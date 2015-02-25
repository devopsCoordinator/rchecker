# == Schema Information
#
# Table name: devices
#
#  id         :integer          not null, primary key
#  uuid       :string
#  model_type :string
#  memo       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Device, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
