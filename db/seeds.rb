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
	["MIT Open Courseware", "Online certification", "Economics", "Macroeconomics101", "TRUE"]
]

handlers.each do |varinstitute, varlevel, varstream, varcourse, varactivation|
	Handler.create(institution: varinstitute, level: varlevel, stream: varstream, course: varcourse, activation: varactivation)
end