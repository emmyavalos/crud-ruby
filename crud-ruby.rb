require 'httparty'
require 'pry'

# Constant - should not change
BASE_URL = "http://json-server.devpointlabs.com/api/v1"

# probably going to turn into an all_users method
@users = HTTParty.get("#{BASE_URL}/users").parsed_response

def all_users

  @users.each do |user|
    puts user['id']
    puts user['first_name']
    puts user['last_name']
    puts user['phone_number']
  end
end

# implement a menu that is in a loop until the user quits
# 1. all users
# 2. single user
# 3. add user
# 4. update user
# 5. delete user
# 6. quit

def menu
  puts "Welcome to the Ruby-Crud User List"
  puts 'Menu'
  puts '1) Show All Users'
  puts '2) See a single User'
  puts '3) Add a User'
  puts '4) Update a User'
  puts '5) Delete a User'
  puts '6) Quit'

  @choice = gets.to_i

end

while true

  menu

  case @choice
    when 1
      puts all_users

    when 2

    when 3
      adds a user thing here

    when 4
    when 5
    when 6
      exit(0)
    else
      puts
      'Bad Input. Try again!'
    end
  end
