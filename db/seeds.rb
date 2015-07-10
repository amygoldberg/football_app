# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.destroy_all
User.destroy_all

team = Team.create!(name: 'arizona cardinals', logo: 'http://i.imgur.com/iWwMdeE.jpg')
team = Team.create!(name: 'atlanta falcons', logo: 'http://i.imgur.com/0XvsIa0.jpg')
team = Team.create!(name: 'baltimore ravens', logo: 'http://i.imgur.com/9rjX8Na.jpg')
team = Team.create!(name: 'buffalo bills', logo: 'http://i.imgur.com/mI5I2oI.jpg')
team = Team.create!(name: 'carolina panthers', logo: 'http://i.imgur.com/s0LF279.png')
team = Team.create!(name: 'chicago bears', logo: 'http://i.imgur.com/2Ab0GCV.jpg')
team = Team.create!(name: 'cincinnati bengals', logo: 'http://i.imgur.com/yJ0wltB.jpg')
team = Team.create!(name: 'cleveland browns', logo: 'http://i.imgur.com/xHAJBL2.jpg')
team = Team.create!(name: 'dallas cowboys', logo: 'http://i.imgur.com/scKemzR.jpg')
team = Team.create!(name: 'denver broncos', logo: 'http://i.imgur.com/iT9rPfT.jpg')
team = Team.create!(name: 'detroit lions', logo: 'http://i.imgur.com/wFpXa88.jpg')
team = Team.create!(name: 'green bay packers', logo: 'http://i.imgur.com/pOAFXgB.jpg')
team = Team.create!(name: 'houston texans', logo: 'http://i.imgur.com/nJIRXII.jpg')
team = Team.create!(name: 'indianapolis colts', logo: 'http://i.imgur.com/BqQt3dg.jpg')
team = Team.create!(name: 'jacksonville jaguars', logo: 'http://i.imgur.com/LObnYz0.jpg')
team = Team.create!(name: 'kansas city chiefs', logo: 'http://i.imgur.com/cuDfShr.jpg')
team = Team.create!(name: 'miami dolphins', logo: 'http://i.imgur.com/0mCWttB.jpg')
team = Team.create!(name: 'minnesota vikings', logo: 'http://i.imgur.com/SL3Rl7b.jpg')
team = Team.create!(name: 'new england patriots', logo: 'http://i.imgur.com/j4j1Nws.jpg')
team = Team.create!(name: 'new orleans saints', logo: 'http://i.imgur.com/K1XlpfM.jpg')
team = Team.create!(name: 'new york giants', logo: 'http://i.imgur.com/8HuIeOc.jpg')
team = Team.create!(name: 'new york jets', logo: 'http://i.imgur.com/OPdUh1n.jpg')
team = Team.create!(name: 'oakland raiders', logo: 'http://i.imgur.com/RMoxAiJ.png')
team = Team.create!(name: 'philadelphia eagles', logo: 'http://i.imgur.com/daiv9fK.jpg')
team = Team.create!(name: 'pittsburgh steelers', logo: 'http://i.imgur.com/Sb2KtZz.jpg')
team = Team.create!(name: 'san diego chargers', logo: 'http://i.imgur.com/FBxUp1I.jpg')
team = Team.create!(name: 'san fran 49s', logo: 'http://i.imgur.com/67FmKU7.jpg')
team = Team.create!(name: 'seattle seahawks', logo: 'http://i.imgur.com/eR0NkrV.jpg')
team = Team.create!(name: 'st. louis rams', logo: 'http://i.imgur.com/oi2XVEP.png')
team = Team.create!(name: 'tampa bay buccaneers', logo: 'http://i.imgur.com/vpncYcM.jpg')
team = Team.create!(name: 'tennessee titans', logo: 'http://i.imgur.com/iufErHD.jpg')
team = Team.create!(name: 'washington redskins', logo: 'http://i.imgur.com/XpgCxIU.jpg')


user = User.create!(username: 'dennisq', password: 'dq', admin: true, name: 'dennis quackenbush', weekly_score: 0, total_score: 0)
user = User.create!(username: 'amyg', password: 'ag', admin: false, name: 'amy goldberg', weekly_score: 0, total_score: 0)

week = GameWeek.create!(week_number: 1, season: '', master: true, status: false)
week.games.create!(team_1: 'new orleans saints', team_2: 'atlanta falcons', team_1_score: , team_2_score: , status: false, winner: '', datetime: , spread: 3)
week.games.create!(team_1: 'st. louis rams', team_2: 'minnesota vikings', team_1_score: , team_2_score: , status: false, winner: '', datetime: , spread: 3.5)
week.games.create!(team_1: 'pittsburgh steelers', team_2: 'cleveland browns', team_1_score: , team_2_score: , status: false, winner: '', datetime: , spread: 6.5)
week.games.create!(team_1: 'philadelphia eagles', team_2: 'jacksonville jaguars', team_1_score: , team_2_score: , status: false, winner: '', datetime: , spread: 10.5)
week.games.create!(team_1: 'new york jets', team_2: 'oakland raiders', team_1_score: , team_2_score: , status: false, winner: '', datetime: , spread: 5.5)
week.games.create!(team_1: 'baltimore ravens', team_2: 'cincinnati bengals', team_1_score: , team_2_score: , status: false, winner: '', datetime: , spread: 1.5)
week.games.create!(team_1: 'chicago bears', team_2: 'buffalo bills', team_1_score: , team_2_score: , status: false, winner: '', datetime: , spread: 7)
week.games.create!(team_1: 'houston texans', team_2: 'washington redskins', team_1_score: , team_2_score: , status: false, winner: '', datetime: , spread: 3)
week.games.create!(team_1: 'kansas city chiefs', team_2: 'tennessee titans', team_1_score: , team_2_score: , status: false, winner: '', datetime: , spread: 3)
week.games.create!(team_1: 'new england patriots', team_2: 'miami dolphins', team_1_score: , team_2_score: , status: false, winner: '', datetime: , spread: 4.5)
week.games.create!(team_1: 'tampa bay buccaneers', team_2: 'carolina panthers', team_1_score: , team_2_score: , status: false, winner: '', datetime: , spread: 2.5)
week.games.create!(team_1: 'san fran 49ers', team_2: 'dallas cowboys', team_1_score: , team_2_score: , status: false, winner: '', datetime: , spread: 4.5)
week.games.create!(team_1: 'denver broncos', team_2: 'indianapolis colts', team_1_score: , team_2_score: , status: false, winner: '', datetime: , spread: 7.5)
week.games.create!(team_1: 'detroit lions', team_2: 'new york giants', team_1_score: , team_2_score: , status: false, winner: '', datetime: , spread: 6)
week.games.create!(team_1: 'arizona cardinals', team_2: 'san diego chargers', team_1_score: , team_2_score: , status: false, winner: '', datetime: , spread: 3)


Date & Time Favorite  Spread  Underdog
9/7 1:00 ET New Orleans -3  At Atlanta
9/7 1:00 ET At St. Louis  -3.5  Minnesota
9/7 1:00 ET At Pittsburgh -6.5  Cleveland
9/7 1:00 ET At Philadelphia -10.5 Jacksonville
9/7 1:00 ET At NY Jets  -5.5  Oakland
9/7 1:00 ET At Baltimore  -1.5  Cincinnati
9/7 1:00 ET At Chicago  -7  Buffalo
9/7 1:00 ET At Houston  -3  Washington
9/7 1:00 ET At Kansas City  -3  Tennessee
9/7 1:00 ET New England -4.5  At Miami
9/7 4:25 ET At Tampa Bay  -2.5  Carolina
9/7 4:25 ET San Francisco -4.5  At Dallas
9/7 8:30 ET At Denver -7.5  Indianapolis

Monday Night Football Point Spread
9/8 7:10 ET At Detroit  -6  NY Giants
9/8 10:25 ET  At Arizona  -3  San Diego
