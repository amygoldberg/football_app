User.destroy_all

user = User.create!(username: 'dennisq', password: 'dq', admin: true, name: 'dennis quackenbush', weekly_score: 0, total_score: 0)
user = User.create!(username: 'amyg', password: 'ag', admin: false, name: 'amy goldberg', weekly_score: 0, total_score: 0)
