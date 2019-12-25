# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seeding manager table
man1=Manager.create! :email => 'Manager_1@Q.com', :password => 'Manager_1', :password_confirmation => 'Manager_1'
man2=Manager.create! :email => 'Manager_2@Q.com', :password => 'Manager_2', :password_confirmation => 'Manager_2'

# Seeding for manager 1:
que1 = man1.ques.create(name: "que_1", email: "email_1", location: "location_1", img: "img_1")
que2 = man1.ques.create(name: "que_2", email: "email_2", location: "location_2", img: "img_2")
que3 = man1.ques.create(name: "que_3", email: "email_3", location: "location_3", img: "img_3")
que4 = man1.ques.create(name: "que_4", email: "email_4", location: "location_4", img: "img_4")
que5 = man1.ques.create(name: "que_5", email: "email_5", location: "location_5", img: "img_5")
# Seeding services for Que 1
que1.services.create(name: "Service_1", description: "Description_1")
que1.services.create(name: "Service_2", description: "Description_2")
que1.services.create(name: "Service_3", description: "Description_3")
que1.services.create(name: "Service_4", description: "Description_4")
# Seeding services for Que 2
que2.services.create(name: "Service_1", description: "Description_1")
que2.services.create(name: "Service_2", description: "Description_2")


# Seeding for manager 2:
que11 = man2.ques.create(name: "que_1", email: "email_1", location: "location_1", img: "img_1")
que22 = man2.ques.create(name: "que_2", email: "email_2", location: "location_2", img: "img_2")
que33 = man2.ques.create(name: "que_3", email: "email_3", location: "location_3", img: "img_3")
que44 = man2.ques.create(name: "que_4", email: "email_4", location: "location_4", img: "img_4")
que55 = man2.ques.create(name: "que_5", email: "email_5", location: "location_5", img: "img_5")
# Seeding services for Que 1
que11.services.create(name: "Service_1", description: "Description_1")
que11.services.create(name: "Service_2", description: "Description_2")
que11.services.create(name: "Service_3", description: "Description_3")
que11.services.create(name: "Service_4", description: "Description_4")
# Seeding services for Que 2
que22.services.create(name: "Service_1", description: "Description_1")
que22.services.create(name: "Service_2", description: "Description_2")


