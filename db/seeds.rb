# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all Articles..."

Article.destroy_all

puts "Creating new Articles..."

art1 = Article.create(title:"Article Number 1", tagline:"Tagline for article number 1! Yay!", rich_body:"This is body of the Article number one. Very fascinating.")
art2=  Article.create(title:"Article Number 2", tagline:"Tagline for article number 2! Yay!", rich_body:"This is body of the Article number two. Very fascinating.")
art3=  Article.create(title:"Article Number 3", tagline:"Tagline for article number 3! Yay!", rich_body:"This is body of the Article number three. Very fascinating.")
art4=  Article.create(title:"Article Number 4", tagline:"Tagline for article number 4! Yay!", rich_body:"This is body of the Article number four. Very fascinating.")
art5=  Article.create(title:"Article Number 5", tagline:"Tagline for article number 5! Yay!", rich_body:"This is body of the Article number five. Very fascinating.")

puts "DONE!"