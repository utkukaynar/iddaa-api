# == Schema Information
#
# Table name: games
#
#  id          :integer          not null, primary key
#  code        :string
#  country     :string
#  rate        :string
#  rate_code   :string
#  teams       :string
#  guess       :string
#  guess_code  :string
#  status      :string
#  probability :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  date        :datetime
#  league      :string
#

FactoryGirl.define do
  factory :game do
    code "MyString"
    country "MyString"
    date "2016-09-14"
    time "2016-09-14 18:00:35"
    rate "MyString"
    teams "MyString"
    guess "MyString"
    guess_code "MyString"
    status "MyString"
  end
end
