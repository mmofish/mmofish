puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
Role.find_or_create_by_name({ :username => role }, :without_protection => true)
puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = name.find_or_create_by_email :username => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'username: ' << user.name
username.add_role :admin
user2 = name.find_or_create_by_email :username => 'Second User', :email => 'user2@example.com', :password => 'changeme', :password_confirmation => 'changeme'
puts 'username: ' << user2.name
user2.add_role :VIP