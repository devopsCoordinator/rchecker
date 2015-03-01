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

FactoryGirl.define do
  factory :supply do
    uuid "MyString"
start_date "2015-03-01 04:30:19"
end_date "2015-03-01 04:30:19"
elapsed_time 1.5
  end

end
