admin = User.new
admin.last_name = 'Brillantes'
admin.first_name = 'Sixto'
admin.birthday = DateTime.new(1995, 10, 24)
admin.gender = 'male'
admin.role = 'admin'
admin.email = 'admin@voteph.org'
admin.password = 'password'
admin.password_confirmation = 'password'
admin.save!

position = Position.new
position.name = 'President'
position.save!

candidate1 = Candidate.new
candidate1.last_name = 'Binay'
candidate1.first_name = 'Jejomar'
candidate1.slogan = 'Kay Binay, Gaganda ang Buhay!'
candidate1.position = position
candidate1.save!

candidate2 = Candidate.new
candidate2.last_name = 'Poe'
candidate2.first_name = 'Grace'
candidate2.slogan = 'Maglilingkod POE sa inyo!'
candidate2.position = position
candidate2.save!

candidate3 = Candidate.new
candidate3.last_name = 'Duterte'
candidate3.first_name = 'Rudy'
candidate3.slogan = 'Gwapa mo a. Patayin kaya kita. Hehe.'
candidate3.position = position
candidate3.save!

voter1 = User.new
voter1.last_name = 'Calabroso'
voter1.first_name = 'Neil'
voter1.birthday = DateTime.new(1995, 10, 24)
voter1.gender = 'male'
voter1.role = 'voter1'
voter1.email = 'voter1@test.com'
voter1.password = 'password'
voter1.password_confirmation = 'password'
voter1.save!

voter2 = User.new
voter2.last_name = 'Andres'
voter2.first_name = 'Mireya'
voter2.birthday = DateTime.new(1995, 3, 20)
voter2.gender = 'female'
voter2.role = 'voter2'
voter2.email = 'voter2@test.com'
voter2.password = 'password'
voter2.password_confirmation = 'password'
voter2.save!
