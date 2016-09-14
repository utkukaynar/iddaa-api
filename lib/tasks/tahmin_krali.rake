require 'open-uri'

namespace :tahmin_krali do
  desc "Tahmin Kralı sitesinden maç tahminlerini alır ve bunları maç modeline işler"
  task parse: :environment do
    doc = Nokogiri::HTML(open("http://www.tahminkrali.com"))
    doc.xpath("//div[@class='current-bet-line line-s']").each do |node|
      @game = Game.find_by(code: node.children[2].text, category: 'MS')
      if !@game
        Game.create(\
          date: DateTime.parse(node.children[0].text),
          league: node.children[1].text,
          code: node.children[2].text,
          teams: node.children[3].text.gsub('İ', 'I').titleize.gsub("   ", " - "),
          category: node.children[5].text,
          guess_code: node.children[6].text,
          guess: node.children[7].text,
          rate_code: node.children[8].text,
          rate: node.children[9].text.to_f,
          probability: node.children[10].text.sub(/\%/, '').to_i.round(-1)/10
        )
      end
    end
  end
end
