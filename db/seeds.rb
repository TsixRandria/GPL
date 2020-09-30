# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(email:"admin@gpl.com", password:"gpl-pass")


5.times do
	v = Voiture.create(image:"http://placehold.it/100x100", marque: Faker::Vehicle.make,  place: rand(4..5), vitesse: "manuelle", types:"essence", climatiseur: true, status:"occupé", portes: rand(4..5))	
	Tarif.create(prix: rand(7..10), voiture: v)
end

5.times do
end

5.times do
	Reservation.create(lieu_depart: Faker::Space.planet , date_depart: Faker::Date.between(from: '2020-09-23', to: '2020-12-27'), heure_depart: Faker::Time.backward(days: 5, period: :morning, format: :short), lieu_retour: Faker::Space.planet , date_retour: Faker::Date.between(from: '2020-09-23', to: '2020-12-27'), heure_retour: Faker::Time.backward(days: 5, period: :morning, format: :short), numero_vol: Faker::Number.leading_zero_number(digits: 10), compagnie: Faker::Space.planet , montant_total: rand(200..220), tarif_id: rand(1..5))
end

5.times do
	TarifSupplementaire.create(libelle: "siège bébé", prix: rand(8..9), tarif_id: rand(1..5))
end

5.times do
	ReservationOption.create(quantite: rand(1..3), tarif_supplementaire_id: rand(1..5), reservation_id: rand(1..5))
end




