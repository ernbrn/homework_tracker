# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

erin = User.create(name: "Erin", password: "erin")
molly = User.create(name: "Molly", password: "molly")
henry = User.create(name: "Henry", password: "henry")
bo = User.create(name: "Bo", password: "bo")
parker = User.create(name: "Parker", password: "parker")


shopper = Assignment.create(title: "Backwards Shopper",
assigned: DateTime.now, due_date: DateTime.now + 2.days, description: "create shopping list", user: erin, assignment_complete: true)

shopper = Assignment.create(title: "Backwards Shopper",
assigned: DateTime.now, due_date: DateTime.now + 2.days, description: "create shopping list", user: molly, assignment_complete: true)

shopper = Assignment.create(title: "Backwards Shopper",
assigned: DateTime.now, due_date: DateTime.now + 2.days, description: "create shopping list", user: henry, assignment_complete: false)

hwtracker = Assignment.create(title: "Homework Tracker",
assigned: DateTime.now, due_date: DateTime.now + 2.days, description: "create hw tracker", user: molly, assignment_complete: false)

twitter = Assignment.create(title: "Twitter",
assigned: DateTime.now, due_date: DateTime.now + 2.days, description: "create twitter", user: henry, assignment_complete: true)

todo = Assignment.create(title: "ToDo List",
assigned: DateTime.now, due_date: DateTime.now + 2.days,
description: "create todo list", user: henry, assignment_complete: false)
