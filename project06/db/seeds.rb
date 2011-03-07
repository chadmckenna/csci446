User.delete_all
Role.delete_all
Permission.delete_all
#Game.delete_all

Role.create(:role_name => "admin")
Role.create(:role_name => "member")

User.create(
  :username => "administrator",
  :password => "password",
  :password_confirmation => "password",
  :first_name => "Admin",
  :last_name => "Istrator",
  :email => "admin@gamez.com"
)

User.create(
  :username => "member",
  :password => "password",
  :password_confirmation => "password",
  :first_name => "Mem",
  :last_name => "Ber",
  :email => "member@gamez.com"
)

Permission.create(
  :user_id => User.find_by_username("administrator").id,
  :role_id => Role.find_by_role_name("admin").id
)

Permission.create(
  :user_id => User.find_by_username("member").id,
  :role_id => Role.find_by_role_name("member").id
)

