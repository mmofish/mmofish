puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
Role.find_or_create_by_name({ :name => role }, :without_protection => true)
puts 'role: ' << role
end
puts 'DEFAULT USERS'

foo = User.find_or_create_by_email :username => ENV['ADMIN_USERNAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'username: ' << foo.username
foo.add_role :admin

bah = User.find_or_create_by_email :username => 'Mizpah', :email => 'mizpah@mmofish.com', :password => 'changeme', :password_confirmation => 'changeme'
puts 'username: ' << bah.username
bah.add_role :VIP