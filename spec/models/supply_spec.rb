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

require 'rails_helper'

RSpec.describe Supply, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
