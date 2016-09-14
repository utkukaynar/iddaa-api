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

require 'rails_helper'

RSpec.describe Game, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
