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
  def translation
    teams = self.teams.split(" - ")
    case self.category
    when /\/MS|MS/
      case guess
      when /\/1|^1$/
        "#{teams[0]} Kazanır"
      when /\/2|^2$/
        "#{teams[1]} Kazanır"
      when /-X|^X$/
        "Berabere Biter"
      end
    when "KG"
      case guess
      when "VAR"
        "Karşılıklı Gol Var"
      when "YOK"
        "Karşılıklı Gol Yok"
      end
    when "TG"
      case guess
      when "ÜST"
        "Toplam Gol 2.5'tan fazla"
      when "1.5 ÜST"
        "Toplam Gol 1.5'tan fazla"
      end
    end
  end
end
