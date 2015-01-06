# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

handlers = [
	["Indian Institute of Technology, Guwahati", "PG", "Engineering", "Computer Science", "FALSE"],
	["Indian Institute of Technology, Kharagpur", "PG", "Engineering", "Mechanical Engineering", "TRUE"],
	["Indian Institute of Management, Ahmedabad", "PG", "Management", "Business Administration", "TRUE"],
	["Indian Institute of Technology, Gandhinagar", "UG", "Engineering", "Computer Science", "TRUE"],
	["Birla Institute of Technology, Ranchi", "UG", "Engineering", "Computer Science", "TRUE"],
	["Coursera.com", "Online Certification", "Data Analytics", "Introduction to Data Science", "TRUE"],
	["MIT Open Courseware", "Online certification", "Economics", "Macroeconomics101", "TRUE"],
	["MIT Open Courseware", "Online certification", "Maths", "Maths101", "TRUE"],
	["MIT Open Courseware", "Online certification", "Chemistry", "Chem101", "TRUE"],
	["Khan Academy", "Online certification", "Economics", "Macroeconomics101", "TRUE"],
	["Delhi University", "UG", "Economics", "Macroeconomics101", "TRUE"],
	["Crist college", "PG", "Economics", "Macroeconomics101", "TRUE"],
	["MIT Open Courseware", "Online certification", "Coding", "Coding101", "TRUE"],
	["MIT Open Courseware", "Online certification", "Coding", "Python101", "TRUE"]
]

handlers.each do |varinstitute, varlevel, varstream, varcourse, varactivation|
	Handler.create(institution: varinstitute, level: varlevel, stream: varstream, course: varcourse, activation: varactivation)
end


i = 0 

10.times do 
	Handler.create(institution: "Institute"+i.to_s, level: "UG", stream: "stream"+i.to_s, course: "course"+i.to_s, activation: TRUE)
	i = i+1
end

i=10
10.times do 
	Handler.create(institution: "Institute"+i.to_s, level: "PG", stream: "stream"+i.to_s, course: "course"+i.to_s, activation: TRUE)
	i = i+1
end

i=20
10.times do 
	Handler.create(institution: "Institute"+i.to_s, level: "Online Certification", stream: "stream"+i.to_s, course: "course"+i.to_s, activation: TRUE)
	i = i+1
end


i=30
10.times do 
	Handler.create(institution: "Institute"+i.to_s, level: "Diploma", stream: "stream"+i.to_s, course: "course"+i.to_s, activation: TRUE)
	i = i+1
end

i=40
10.times do 
	Handler.create(institution: "Institute"+i.to_s, level: "Diploma", stream: "stream"+i.to_s, course: "course"+i.to_s, activation: FALSE)
	i = i+1
end