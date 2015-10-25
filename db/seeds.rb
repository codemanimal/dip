# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

members = Member.create([
	{
		first_name: "Mark",
		last_name: "Smukler",
		zipcode: "07042",
		gender: "MALE",
		email: "smukler.mark@gmail.com",
		password: "dipmark"
	},
	{
		first_name: "Dylan",
		last_name: "Bushnell",
		zipcode: "90210",
		gender: "MALE",
		email: "dylan@thedipapp.com",
		password: "dipdylan"
	},
	{
		first_name: "Curt",
		last_name: "Selak",
		zipcode: "10010",
		gender: "MALE",
		email: "curt@thedipapp.com",
		password: "dipcurt"
	}
])