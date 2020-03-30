# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
User.destroy_all
Society.destroy_all
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new(email: "asso.routedebordeaux@gmail.com", password:"asso-24100")
user.save

puts " user created"

society = Society.new(name: "France Pare-Brise", address: "98 Avenue du Général de Gaulle, 24100 Bergerac", phone_number: "0553631297", url: "https://www.franceparebrise.fr/reparation-pare-brise/bergerac", user_id: user.id, image: "https://www.automobile-entreprise.com/IMG/arton6184.png")
society2 = Society.new(name: "Easy Cash", address: "131 Route de Bordeaux, 24100 Bergerac", phone_number: "0553241877", url: "https://magasins.easycash.fr/dordogne-24/ENT82-bergerac-24100", user_id: user.id, image: "https://www.easycash.fr/bundles/easycashfrontmain/img/easycash-facebook.jpg")
society3 = Society.new(name: "E.Leclerc", address: "Route de Bordeaux, 24100 Bergerac", phone_number: "0553636868", url: "https://www.e-leclerc.com/bergerac", user_id: user.id, image: "https://cdn.1min30.com/wp-content/uploads/2017/08/logo-Leclerc.jpg")
society4 = Society.new(name: "Intersport", address: "1 Route de Bordeaux, 24100 Bergerac", phone_number:  "0553745858", url: "https://www.intersport.fr/Dordogne-24/BERGERAC-24100/INTERSPORT-BERGERAC/00134_000/", user_id: user.id, image: "https://cms.intersport.fr/wp-content/uploads/2016/08/logo_is.png")

society.save
society2.save
society3.save
society4.save

puts "societies creates"
