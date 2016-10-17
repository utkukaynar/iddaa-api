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
  scope :active, -> { where('date >= ?', Date.yesterday) }
  def translation
    teams = self.teams.split(" - ")
    case self.category
    when /\/MS|MS/
      case guess
      when /\/1|^1$|-1/
        "#{UnicodeUtils.titlecase(teams[0], :tr)} Kazanır"
      when /\/2|^2$|-2/
        "#{UnicodeUtils.titlecase(teams[1], :tr)} Kazanır"
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
      when "ALT"
        "Toplam Gol 2.5'tan az"
      end
    end
  end
end
