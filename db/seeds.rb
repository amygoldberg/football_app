# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.destroy_all
Game.destroy_all
GameWeek.destroy_all
User.destroy_all

# all teams
cardinals = Team.create!(name: 'arizona cardinals', logo_url: 'http://i.imgur.com/iWwMdeE.jpg')
falcons= Team.create!(name: 'atlanta falcons', logo_url: 'http://i.imgur.com/0XvsIa0.jpg')
ravens = Team.create!(name: 'baltimore ravens', logo_url: 'http://i.imgur.com/9rjX8Na.jpg')
bills = Team.create!(name: 'buffalo bills', logo_url: 'http://i.imgur.com/mI5I2oI.jpg')
panthers = Team.create!(name: 'carolina panthers', logo_url: 'http://i.imgur.com/s0LF279.png')
bears = Team.create!(name: 'chicago bears', logo_url: 'http://i.imgur.com/2Ab0GCV.jpg')
bengals = Team.create!(name: 'cincinnati bengals', logo_url: 'http://i.imgur.com/yJ0wltB.jpg')
browns = Team.create!(name: 'cleveland browns', logo_url: 'http://i.imgur.com/xHAJBL2.jpg')
cowboys = Team.create!(name: 'dallas cowboys', logo_url: 'http://i.imgur.com/scKemzR.jpg')
broncos = Team.create!(name: 'denver broncos', logo_url: 'http://i.imgur.com/iT9rPfT.jpg')
lions = Team.create!(name: 'detroit lions', logo_url: 'http://i.imgur.com/wFpXa88.jpg')
packers = Team.create!(name: 'green bay packers', logo_url: 'http://i.imgur.com/pOAFXgB.jpg')
texans = Team.create!(name: 'houston texans', logo_url: 'http://i.imgur.com/nJIRXII.jpg')
colts = Team.create!(name: 'indianapolis colts', logo_url: 'http://i.imgur.com/BqQt3dg.jpg')
jaguars = Team.create!(name: 'jacksonville jaguars', logo_url: 'http://i.imgur.com/LObnYz0.jpg')
chiefs = Team.create!(name: 'kansas city chiefs', logo_url: 'http://i.imgur.com/cuDfShr.jpg')
dolphins = Team.create!(name: 'miami dolphins', logo_url: 'http://i.imgur.com/0mCWttB.jpg')
vikings = Team.create!(name: 'minnesota vikings', logo_url: 'http://i.imgur.com/SL3Rl7b.jpg')
patriots = Team.create!(name: 'new england patriots', logo_url: 'http://i.imgur.com/j4j1Nws.jpg')
saints = Team.create!(name: 'new orleans saints', logo_url: 'http://i.imgur.com/K1XlpfM.jpg')
giants = Team.create!(name: 'new york giants', logo_url: 'http://i.imgur.com/8HuIeOc.jpg')
jets = Team.create!(name: 'new york jets', logo_url: 'http://i.imgur.com/OPdUh1n.jpg')
raiders = Team.create!(name: 'oakland raiders', logo_url: 'http://i.imgur.com/RMoxAiJ.png')
eagles = Team.create!(name: 'philadelphia eagles', logo_url: 'http://i.imgur.com/daiv9fK.jpg')
steelers = Team.create!(name: 'pittsburgh steelers', logo_url: 'http://i.imgur.com/Sb2KtZz.jpg')
chargers = Team.create!(name: 'san diego chargers', logo_url: 'http://i.imgur.com/FBxUp1I.jpg')
sanfran = Team.create!(name: 'san fran 49ers', logo_url: 'http://i.imgur.com/67FmKU7.jpg')
seahawks = Team.create!(name: 'seattle seahawks', logo_url: 'http://i.imgur.com/eR0NkrV.jpg')
rams = Team.create!(name: 'st. louis rams', logo_url: 'http://i.imgur.com/oi2XVEP.png')
buccaneers = Team.create!(name: 'tampa bay buccaneers', logo_url: 'http://i.imgur.com/vpncYcM.jpg')
titans = Team.create!(name: 'tennessee titans', logo_url: 'http://i.imgur.com/iufErHD.jpg')
redskins = Team.create!(name: 'washington redskins', logo_url: 'http://i.imgur.com/XpgCxIU.jpg')

# # admin user is dennis
dennis = User.create!(username: 'dennisq', password: 'dq', email: 'dqphysics@gmail.com', admin: true, name: 'dennis quackenbush', weekly_score: 0, total_score: 0)

# dennis game_week1 spreadsheet containing all the games for the week
game_week1 = GameWeek.create!(week_number: 1, season: Date.parse("Sept 7, 2014"), master: true, status: false, user: dennis)

# 1:00 ET games for game_week1
game1 = Game.create!(status: false, spread: -3, game_date: Date.parse('Sept 7 2014'), game_week: game_week1)
game1.teams << saints
game1.teams << falcons
game1.save!

game2 = Game.create!(status: false, spread: -3.5, game_date: Date.parse('7th Sept 2014'), game_week: game_week1)
game2.teams << rams
game2.teams << vikings
game2.save!

game3 = Game.create!(status: false, spread: -6.5, game_date: Date.parse('7th Sept 2014'), game_week: game_week1)
game3.teams << steelers
game3.teams << browns
game3.save!

game4 = Game.create!(status: false, spread: -10.5, game_date: Date.parse('7th Sept 2014'), game_week: game_week1)
game4.teams << eagles
game4.teams << jaguars
game4.save!

game5 = Game.create!(status: false, spread: -5.5, game_date: Date.parse('7th Sept 2014'), game_week: game_week1)
game5.teams << jets
game5.teams << raiders
game5.save!

game6 = Game.create!(status: false, spread: -1.5, game_date: Date.parse('7th Sept 2014'), game_week: game_week1)
game6.teams << ravens
game6.teams << bengals
game6.save!

game7 = Game.create!(status: false, spread: -7, game_date: Date.parse('7th Sept 2014'), game_week: game_week1)
game7.teams << bears
game7.teams << bills
game7.save!

game8 = Game.create!(status: false, spread: -3, game_date: Date.parse('7th Sept 2014'), game_week: game_week1)
game8.teams << texans
game8.teams << redskins
game8.save!

game9 = Game.create!(status: false, spread: -3, game_date: Date.parse('7th Sept 2014'), game_week: game_week1)
game9.teams << chiefs
game9.teams << titans
game9.save!

game10 = Game.create!(status: false, spread: -4.5, game_date: Date.parse('7th Sept 2014'), game_week: game_week1)
game10.teams << patriots
game10.teams << dolphins
game10.save!

# 4:25 ET games for game_week1
game11 = Game.create!(status: false, spread: -2.5, game_date: Date.parse('7th Sept 2014'), game_week: game_week1)
game11.teams << buccaneers
game11.teams << panthers
game11.save!

game12 = Game.create!(status: false, spread: -4.5, game_date: Date.parse('7th Sept 2014'), game_week: game_week1)
game12.teams << sanfran
game12.teams << cowboys
game12.save!

# 8:30 ET games for game_week1
game13 = Game.create!(status: false, spread: -7.5, game_date: Date.parse('7th Sept 2014'), game_week: game_week1)
game13.teams << broncos
game13.teams << colts
game13.save!

# Monday nights games for game_week1 7:10 ET
game14 = Game.create!(status: false, spread: -6, game_date: Date.parse('8th Sept 2014'), game_week: game_week1)
game14.teams << lions
game14.teams << giants
game14.save!

# 10:25 ET
game15 = Game.create!(status: false, spread: -3, game_date: Date.parse('8th Sept 2014'), game_week: game_week1)
game15.teams << cardinals
game15.teams << chargers
game15.save!

# non-admin user amy
amy = User.create!(username: 'amyg', password: 'ag', email: 'amykgoldberg@gmail.com', admin: false, name: 'amy goldberg', weekly_score: 0, total_score: 0)


# Date & Time Favorite  Spread  Underdog
# 9/7 1:00 ET New Orleans -3  At Atlanta
# 9/7 1:00 ET At St. Louis  -3.5  Minnesota
# 9/7 1:00 ET At Pittsburgh -6.5  Cleveland
# 9/7 1:00 ET At Philadelphia -10.5 Jacksonville
# 9/7 1:00 ET At NY Jets  -5.5  Oakland
# 9/7 1:00 ET At Baltimore  -1.5  Cincinnati
# 9/7 1:00 ET At Chicago  -7  Buffalo
# 9/7 1:00 ET At Houston  -3  Washington
# 9/7 1:00 ET At Kansas City  -3  Tennessee
# 9/7 1:00 ET New England -4.5  At Miami
# 9/7 4:25 ET At Tampa Bay  -2.5  Carolina
# 9/7 4:25 ET San Francisco -4.5  At Dallas
# 9/7 8:30 ET At Denver -7.5  Indianapolis

# Monday Night Football Point Spread
# 9/8 7:10 ET At Detroit  -6  NY Giants
# 9/8 10:25 ET  At Arizona  -3  San Diego
