# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning database"
Reservation.destroy_all
Instrument.destroy_all
User.destroy_all

puts "creating users"

miebi = User.new(email: "mimidu44@gmail.com", password: "123456", username: "mimi", address: "Nantes" )
file = File.open(Rails.root.join('db/seeds/users/miebi.jpg'))
miebi.photo.attach(io: file, filename: 'miebi.jpg', content_type: 'image/jpeg')
miebi.save!

thomas = User.new(email: "totodu44@gmail.com", password: "123456", username: "toto", address: "Ancenis" )
file = File.open(Rails.root.join('db/seeds/users/thomas.jpg'))
thomas.photo.attach(io: file, filename: 'thomas.jpg', content_type: 'image/jpeg')
thomas.save!

fx = User.new(email: "fxdu75@gmail.com", password: "123456", username: "PAPA", address: "Les Herbiers" )
file = File.open(Rails.root.join('db/seeds/users/fx.jpg'))
fx.photo.attach(io: file, filename: 'fx.jpg', content_type: 'image/jpeg')
fx.save!

hippo = User.new(email: "hippodu44@gmail.com", password: "123456", username: "Don Hippo", address: "Cholet" )
file = File.open(Rails.root.join('db/seeds/users/hippo.png'))
hippo.photo.attach(io: file, filename: 'hippo.png', content_type: 'image/png')
hippo.save!

italian = User.new(email: "italian@gmail.com", password: "123456", username: "Mr Pasta", address: "Venezia" )
file = File.open(Rails.root.join('db/seeds/users/italian.png'))
italian.photo.attach(io: file, filename: 'italian.png', content_type: 'image/png')
italian.save!


puts "creating instruments"

orgue = Instrument.new(owner: italian, name: "Orgue de Barbarie", family: "Vents", price_per_day: 10, description: "Très bon état, à Nono.")
file = File.open(Rails.root.join('db/seeds/instruments/orgue.jpg'))
contrebasse.photo.attach(io: file, filename: 'orgue.jpg', content_type: 'image/jpeg')
contrebasse.save!

contrebasse = Instrument.new(owner: miebi, name: "Contrebasse Strunal 1930", family: "Cordes", price_per_day: 15, description: "Très bon état, achetée en 2014.")
file = File.open(Rails.root.join('db/seeds/instruments/Contrebasse.jpg'))
contrebasse.photo.attach(io: file, filename: 'Contrebasse.jpg', content_type: 'image/jpeg')
contrebasse.save!

flute_traversiere_1 = Instrument.new(owner: hippo, name: "flute traversière 1976", family: "Vents", price_per_day: 15, description: "Bon état, achetée en 2016.")
file = File.open(Rails.root.join('db/seeds/instruments/flutetraversiere1976.jpg'))
flute_traversiere_1.photo.attach(io: file, filename: 'flutetraversiere1976.jpg', content_type: 'image/jpeg')
flute_traversiere_1.save!

flute_traversiere_2 = Instrument.new(owner: fx, name: "flute traversière 1988", family: "Vents", price_per_day: 15, description: "Bon état, achetée en 2010.")
file = File.open(Rails.root.join('db/seeds/instruments/flutetraversière.jpg'))
flute_traversiere_2.photo.attach(io: file, filename: 'flutetraversière.jpg', content_type: 'image/jpeg')
flute_traversiere_2.save!

metal = Instrument.new(owner: fx, name: "Guitare Metal", family: "Cordes", price_per_day: 35, description: "Bon état, achetée en 2018, arrache tout.")
file = File.open(Rails.root.join('db/seeds/instruments/metalGuitare.jpg'))
metal.photo.attach(io: file, filename: 'metalGuitare.jpg', content_type: 'image/jpeg')
metal.save!

guitare_electrique_1 = Instrument.new(owner: thomas, name: "Guitare Electrique Lag", family: "Cordes", price_per_day: 20, description: "Très bon état, achetée en 2019.")
file = File.open(Rails.root.join('db/seeds/instruments/GuitareelectriqueLag.jpg'))
guitare_electrique_1.photo.attach(io: file, filename: 'GuitareelectriqueLag.jpg', content_type: 'image/jpeg')
guitare_electrique_1.save!

guitare_electrique_2 = Instrument.new(owner: thomas, name: "Guitare Electrique Classique", family: "Cordes", price_per_day: 10, description: "Etat correct, achetée en 2008.")
file = File.open(Rails.root.join('db/seeds/instruments/GuitareelectriqueLag.jpg'))
guitare_electrique_2.photo.attach(io: file, filename: 'GuitareelectriqueLag.jpg', content_type: 'image/jpeg')
guitare_electrique_2.save!

guitare_acoustique = Instrument.new(owner: thomas, name: "Guitare Acoustique Classique", family: "Cordes", price_per_day: 10, description: "Etat correct, achetée en 2004.")
file = File.open(Rails.root.join('db/seeds/instruments/GuitareAcoustique.jpg'))
guitare_acoustique.photo.attach(io: file, filename: 'GuitareAcoustique.jpg', content_type: 'image/jpeg')
guitare_acoustique.save!

harpe = Instrument.new(owner: thomas, name: "Harpe de concert", family: "Cordes", price_per_day: 25, description: "Très bon état, achetée en 2020")
file = File.open(Rails.root.join('db/seeds/instruments/Harpe.jpg'))
harpe.photo.attach(io: file, filename: 'Harpe.jpg', content_type: 'image/jpeg')
harpe.save!

hautbois = Instrument.new(owner: thomas, name: "Hautbois", family: "Vents", price_per_day: 16, description: "Très bon état, achetée en 2019")
file = File.open(Rails.root.join('db/seeds/instruments/hautbois.jpg'))
hautbois.photo.attach(io: file, filename: 'hautbois.jpg', content_type: 'image/jpeg')
hautbois.save!

violon_1 = Instrument.new(owner: thomas, name: "Kamânche Violon iranien", family: "Cordes", price_per_day: 25, description: "Très bon état, achetée en 1988")
file = File.open(Rails.root.join('db/seeds/instruments/Violon1.png'))
violon_1.photo.attach(io: file, filename: 'Violon1.png', content_type: 'image/png')
violon_1.save!

mandoline = Instrument.new(owner: miebi, name: "Mandoline", family: "Cordes", price_per_day: 10, description: "bon état, achetée en 1789")
file = File.open(Rails.root.join('db/seeds/instruments/Mandoline.jpg'))
mandoline.photo.attach(io: file, filename: 'Mandoline.jpg', content_type: 'image/jpeg')
mandoline.save!

ocarina_focalink = Instrument.new(owner: miebi, name: "Ocarina Focalink", family: "Vents", price_per_day: 5, description: "Très bon état, achetée en 2017")
file = File.open(Rails.root.join('db/seeds/instruments/OcarinaFocalink.jpg'))
ocarina_focalink.photo.attach(io: file, filename: 'OcarinaFocalink.jpg', content_type: 'image/jpeg')
ocarina_focalink.save!

piano_1 = Instrument.new(owner: miebi, name: "Piano 1-4 de queue", family: "Cordes", price_per_day: 50, description: "Très bon état, achetée en 2008")
file = File.open(Rails.root.join('db/seeds/instruments/Piano1.jpg'))
piano_1.photo.attach(io: file, filename: 'Piano1.jpg', content_type: 'image/jpeg')
piano_1.save!

piano_2 = Instrument.new(owner: hippo, name: "Piano 1-4 de queue", family: "Cordes", price_per_day: 50, description: "Très bon état, achetée en 2009")
file = File.open(Rails.root.join('db/seeds/instruments/Piano2.jpg'))
piano_2.photo.attach(io: file, filename: 'Piano2.jpg', content_type: 'image/jpeg')
piano_2.save!

saxophone_1 = Instrument.new(owner: hippo, name: "Saxophone Jimmy Sax", family: "Cuivres", price_per_day: 20, description: "Bon état, achetée en 2011.")
file = File.open(Rails.root.join('db/seeds/instruments/saxophone _1.jpg'))
saxophone_1.photo.attach(io: file, filename: 'saxophone _1.jpg', content_type: 'image/jpeg')
saxophone_1.save!

saxophone_2 = Instrument.new(owner: hippo, name: "Saxophone Alto", family: "Cuivres", price_per_day: 20, description: "Bon état, achetée en 1999.")
file = File.open(Rails.root.join('db/seeds/instruments/saxophone_2.jpg'))
saxophone_2.photo.attach(io: file, filename: 'saxophone_2.jpg', content_type: 'image/jpeg')
saxophone_2.save!

saxophone_3 = Instrument.new(owner: fx, name: "Saxophone Ténor", family: "Cuivres", price_per_day: 20, description: "Bon état, achetée en 1983.")
file = File.open(Rails.root.join('db/seeds/instruments/saxophone_3.jpg'))
saxophone_3.photo.attach(io: file, filename: 'saxophone_3.jpg', content_type: 'image/jpeg')
saxophone_3.save!

trombone_a_coulisse = Instrument.new(owner: fx, name: "Trombone à coulisse", family: "Cuivres", price_per_day: 20, description: "Très bon état, achetée en 2000.")
file = File.open(Rails.root.join('db/seeds/instruments/Trombone.jpg'))
trombone_a_coulisse.photo.attach(io: file, filename: 'Trombone.jpg', content_type: 'image/jpeg')
trombone_a_coulisse.save!

trompette = Instrument.new(owner: fx, name: "Trompette", family: "Cuivres", price_per_day: 15, description: "Bon état, achetée en 2004.")
file = File.open(Rails.root.join('db/seeds/instruments/Trompette.jpg'))
trompette.photo.attach(io: file, filename: 'Trompette.jpg', content_type: 'image/jpeg')
trompette.save!

tuba = Instrument.new(owner: miebi, name: "Tuba", family: "Cuivres", price_per_day: 20, description: "Très bon état, achetée en 2006.")
file = File.open(Rails.root.join('db/seeds/instruments/Tuba.jpg'))
tuba.photo.attach(io: file, filename: 'Tuba.jpg', content_type: 'image/jpeg')
tuba.save!

violon_2 = Instrument.new(owner: thomas, name: "Violon 1900", family: "Cordes", price_per_day: 20, description: "Très bon état, achetée en 2014.")
file = File.open(Rails.root.join('db/seeds/instruments/Violon_2.png'))
violon_2.photo.attach(io: file, filename: 'Violon_2.png', content_type: 'image/png')
violon_2.save!

violon_3 = Instrument.new(owner: hippo, name: "Violon Violon Charles Bailly 1924", family: "Cordes", price_per_day: 20, description: "Très bon état, achetée en 2021.")
file = File.open(Rails.root.join('db/seeds/instruments/Violon_3.jpg'))
violon_3.photo.attach(io: file, filename: 'Violon_3.jpg', content_type: 'image/jpeg')
violon_3.save!

puts "creating reservations"

Reservation.create!(instrument: contrebasse, renter: thomas, start_date: "2021-03-01", end_date: "2021-03-02", status: "Declined", total_price: 15)
Reservation.create!(instrument: tuba, renter: miebi, start_date: "2021-01-02", end_date: "2021-01-04", status: "Accepted", total_price: 40)
Reservation.create!(instrument: trombone_a_coulisse, renter: fx, start_date: "2020-08-02", end_date: "2020-08-06", status: "Pending", total_price: 80)
Reservation.create!(instrument: saxophone_2, renter: hippo, start_date: "2020-12-14", end_date: "2020-12-24", status: "Accepted", total_price: 200)
Reservation.create!(instrument: saxophone_3, renter: thomas, start_date: "2021-03-19", end_date: "2021-03-23", status: "Accepted", total_price: 80)
Reservation.create!(instrument: piano_1, renter: miebi, start_date: "2021-01-10", end_date: "2021-01-18", status: "Pending", total_price: 400)
Reservation.create!(instrument: piano_2, renter: fx, start_date: "2020-08-15", end_date: "2020-08-20", status: "Declined", total_price: 250)
Reservation.create!(instrument: hautbois, renter: hippo, start_date: "2020-12-07", end_date: "2020-12-10", status: "Pending", total_price: 48)
Reservation.create!(instrument: violon_1, renter: thomas, start_date: "2021-04-01", end_date: "2021-04-02", status: "Pending", total_price: 25)
Reservation.create!(instrument: violon_2, renter: miebi, start_date: "2021-05-02", end_date: "2021-05-04", status: "Declined", total_price: 40)
Reservation.create!(instrument: mandoline, renter: fx, start_date: "2020-04-02", end_date: "2020-04-06", status: "Accepted", total_price: 40)
Reservation.create!(instrument: guitare_electrique_1, renter: hippo, start_date: "2020-11-14", end_date: "2020-11-24", status: "Declined", total_price: 200)

puts "finish"












