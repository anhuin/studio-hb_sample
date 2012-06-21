# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'SETTING UP DEFAULT USER LOGIN'

user = User.create! :login => 'anhuin', :email => 'f.bascoulergue@gmail.com', :password => 'qwerty',
                    :password_confirmation => 'qwerty', :birthday => Date.new
puts 'New user created: ' << user.login

user2 = User.create! :login => 'aurelia', :email => 'aurelia-sana@hotmail.com', :password => 'qwerty',
                     :password_confirmation => 'qwerty', :birthday => Date.new
puts 'New user created: ' << user2.login

user.add_role :admin
