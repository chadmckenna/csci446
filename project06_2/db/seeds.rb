User.delete_all
Role.delete_all

admin = Role.create(
  :name => "admin"
)

member = Role.create(
  :name => "member"
)

User.create(
  :username => "admin",
  :password => "password",
  :password_confirmation => "password",
  :first_name => "admin",
  :last_name => "istrator",
  :email => "admin@gamez.com",
  :role_id => admin.id
)

User.create(
  :username => "member",
  :password => "password",
  :password_confirmation => "password",
  :first_name => "mem",
  :last_name => "ber",
  :email => "member@gamez.com",
  :role_id => member.id
)