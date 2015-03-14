# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: "Bradford Nemmers", email: "bnems@test.com", gender: "male", rel_type: "dating", orientation: "female", 
						location: "90025", radius: 25);
# User.create(name: "Biff Nacks", email: "biff@test.com", age: 30, gender: "male",
#                         rel_type: "dating", orientation: "male", location: "90025", radius: 11);
# User.create(name: "Zooks Was", email: "zooks@test.com", age: 20, gender: "male",
#                         rel_type: "freindship", orientation: "female", location: "90401", radius: 25);
# User.create(name: "Nerds Hungry", email: "nerd@test.com", age: 22, gender: "male",
#                         rel_type: "dating", orientation: "female", location: "90025", radius: 30);                     
# User.create(name: "Sleepy Guy", email: "sleepy@test.com", age: 37, gender: "male",
#                         rel_type: "dating", orientation: "female", location: "90025", radius: 40);
# User.create(name: "Hot Girl", email: "hot@test.com", age: 18, gender: "female",
#                         rel_type: "dating", orientation: "female", location: "90025", radius: 10);
# User.create(name: "Arsi Likes", email: "arsi@test.com", age: 20, gender: "male",
#                         rel_type: "dating", orientation: "male", location: "90026", radius: 11);
# User.create(name: "Seed Stuff", email: "seed@test.com", age: 26, gender: "male",
#                         rel_type: "dating", orientation: "female", location: "90401", radius: 25);
# User.create(name: "Virgin Girl", email: "virgin@test.com", age: 16, gender: "female",
#                         rel_type: "dating", orientation: "male", location: "90025", radius: 30);                     
# User.create(name: "Drunk Guy", email: "drunk@test.com", age: 36, gender: "male",
#                         rel_type: "dating", orientation: "female", location: "90401", radius: 40);
# User.create(name: "Bum Bum", email: "bum@test.com", age: 36, gender: "male",
#                         rel_type: "dating", orientation: "female", location: "90401", radius: 10);    
# Match
User.create(name: "Jenni MacArthur", email: "jenni@test.com", gender: "female", rel_type: "dating", orientation: "male",
						location: "90404", radius: 10);
# Not a match (Distance);
User.create(name: "Samantha Cole", email: "sam@test.com", gender: "female", rel_type: "dating", orientation: "male",
						location: "92037", radius: 15);
# Not a match (Rel Type)
User.create(name: "Susan B. Anthony", email: "susan@test.com", gender: "female", rel_type: "friendship", orientation: "both",
						location: "90034", radius: 25);
# Not a match (Orientation -> Gender)
User.create(name: "Steve Jones", email: "steve@test.com", gender: "male", rel_type: "dating", orientation: "female",
						location: "90046", radius: 10);
# Not a match
User.create(name: "Susan B. Anthony", email: "susan@test.com", gender: "female", rel_type: "friendship", orientation: "both",
						location: "90035", radius: 25);                                                                          