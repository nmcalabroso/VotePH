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
