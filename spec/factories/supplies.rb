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

FactoryGirl.define do
  factory :supply do
    uuid "MyString"
start_date "2015-02-22 15:10:42"
end_date "2015-02-22 15:10:42"
  end

end
