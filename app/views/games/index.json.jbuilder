json.array! @games do |game|
  json.id game.id
  json.code game.code
  json.teams UnicodeUtils.titlecase(game.teams, :tr)
  json.guess game.guess
  json.guess_string game.translation
  json.category game.category
  json.rate game.rate
  json.date game.date.strftime("%d.%m")
end
