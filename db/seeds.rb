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
candidate1.slogan = 'Kay Binay, Gaganda ang Buhay'
candidate1.position = position

File.open('public/tests/binay.jpg') do |f|
  candidate1.avatar = f
end

candidate1.save!

candidate2 = Candidate.new
candidate2.last_name = 'Poe'
candidate2.first_name = 'Grace'
candidate2.slogan = 'Masipag, Magalang, Matulungin'
candidate2.position = position

File.open('public/tests/poe.jpg') do |f|
  candidate2.avatar = f
end

candidate2.save!

candidate3 = Candidate.new
candidate3.last_name = 'Duterte'
candidate3.first_name = 'Rodrigo'
candidate3.slogan = 'Tuloy ang laban tungo sa pagbabago'
candidate3.position = position

File.open('public/tests/duterte.jpg') do |f|
  candidate3.avatar = f
end

candidate3.save!

position2 = Position.new
position2.name = 'Vice President'
position2.save!

candidate4 = Candidate.new
candidate4.last_name = 'Escudero'
candidate4.first_name = 'Francis'
candidate4.slogan = 'I dare to care about equality'
candidate4.position = position2

File.open('public/tests/escudero.jpg') do |f|
  candidate4.avatar = f
end

candidate4.save!

candidate5 = Candidate.new
candidate5.last_name = 'Trillanes'
candidate5.first_name = 'Antonio'
candidate5.slogan = 'Magdalo, Para sa pagbabago'
candidate5.position = position2

File.open('public/tests/trillanes.jpg') do |f|
  candidate5.avatar = f
end

candidate5.save!

candidate6 = Candidate.new
candidate6.last_name = 'Roxas'
candidate6.first_name = 'Manuel'
candidate6.slogan = 'Sama-sama tayo. Lalaban tayo.'
candidate6.position = position2

File.open('public/tests/roxas.jpg') do |f|
  candidate6.avatar = f
end

candidate6.save!

voter1 = User.new
voter1.last_name = 'Calabroso'
voter1.first_name = 'Neil'
voter1.birthday = DateTime.new(1995, 10, 24)
voter1.gender = 'male'
voter1.role = 'user'
voter1.email = 'voter1@test.com'
voter1.password = 'password'
voter1.password_confirmation = 'password'
voter1.save!

voter2 = User.new
voter2.last_name = 'Andres'
voter2.first_name = 'Mireya'
voter2.birthday = DateTime.new(1995, 3, 20)
voter2.gender = 'female'
voter2.role = 'user'
voter2.email = 'voter2@test.com'
voter2.password = 'password'
voter2.password_confirmation = 'password'
voter2.save!
