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
	Handler.create(level: varlevel, stream: varstream, course: varcourse, activation: varactivation, institutehandler_id: 1)
end


i = 0 
50.times do 
	Handler.create(level: "UG", stream: "stream"+i.to_s, course: "course"+i.to_s, activation: TRUE, institutehandler_id: 1)
	i = i+1
end

50.times do 
	Handler.create(level: "PG", stream: "economics"+i.to_s, course: "course"+i.to_s, activation: TRUE, institutehandler_id: 1)
	i = i+1
end

50.times do 
	Handler.create(level: "Online certification", stream: "computer science"+i.to_s, course: "course"+i.to_s, activation: TRUE, institutehandler_id: 1)
	i = i+1
end

50.times do 
	Handler.create(level: "Online certification", stream: "computer science"+i.to_s, course: "course"+i.to_s, activation: FALSE, institutehandler_id: 1)
	i = i+1
end