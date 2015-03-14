# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name: "Bradford Nemmers", email: "test@email.com", gender: "male", rel_type: "dating", orientation: "female", location: "90025", radius: 25);
# Match
User.create!(name: "Jenni MacArthur", email: "test1@email.com", gender: "female", rel_type: "dating", orientation: "male", location: "90404", radius: 10);
# Not a match (Distance);
User.create!(name: "Samantha Cole", email: "test2@email.com", gender: "female", rel_type: "dating", orientation: "male", location: "90620", radius: 15);
# Not a match (Rel Type)
User.create!(name: "Susan B. Anthony", email: "test3@email.com", gender: "female", rel_type: "friendship", orientation: "both", location: "90025", radius: 25);
# Not a match (Orientation -> Gender)
User.create!(name: "Steve Jones", email: "test4@email.com", gender: "male", rel_type: "dating", orientation: "female", location: "90046", radius: 10);
# Not a match
User.create!(name: "Susan B. Anthony", email: "test5@email.com", gender: "female", rel_type: "friendship", orientation: "both", location: "90025", radius: 25);