# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

articles = Article.create
  ([{id: 1, title: "Title 1", body: "Dummy text 1 blah"}])
  ([{id: 2, title: "Title 2", body: "Dummy text 2 blah"}])
  ([{id: 3, title: "Title 3", body: "Dummy text 3 blah"}])
  ([{id: 4, title: "Title 4", body: "Dummy text 4 blah"}])
  ([{id: 5, title: "Title 5", body: "Dummy text 5 blah"}])

