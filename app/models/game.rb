# == Schema Information
#
# Table name: games
#
#  id          :integer          not null, primary key
#  code        :string
#  rate_code   :string
#  teams       :string
#  guess       :string
#  guess_code  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  date        :datetime
#  league      :string
#  category    :string
#  rate        :float
#  probability :integer
#

class Game < ApplicationRecord
  scope :active, -> { where('date >= ?', Date.today) }
end
