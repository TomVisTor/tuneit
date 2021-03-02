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

miebi = User.create!(email: "mimidu44@gmail.com", password: "123456", username: "mimi", address: "1 rue Lakanal" )
thomas = User.create!(email: "totodu44@gmail.com", password: "123456", username: "toto", address: "1 rue Lakanal" )
fx = User.create!(email: "fxdu75@gmail.com", password: "123456", username: "PAPA", address: "1 rue Lakanal" )
hippo = User.create!(email: "hippodu44@gmail.com", password: "123456", username: "Don Hippo", address: "1 rue Lakanal" )

puts "creating instruments"

contrebasse = Instrument.create!(owner: miebi, name: "Contrebasse Strunal 1930", family: "Cordes", price_per_day: 15, description: "Très bon état, achetée en 2014.")

flute_traversiere_1 = Instrument.create!(owner: hippo, name: "flute traversière 1976", family: "Vents", price_per_day: 15, description: "Bon état, achetée en 2016.")

flute_traversiere_2 = Instrument.create!(owner: fx, name: "flute traversière 1988", family: "Vents", price_per_day: 15, description: "Bon état, achetée en 2010.")

guitare_electrique_1 = Instrument.create!(owner: thomas, name: "Guitare Electrique Lag", family: "Cordes", price_per_day: 20, description: "Très bon état, achetée en 2019.")

guitare_electrique_2 = Instrument.create!(owner: thomas, name: "Guitare Electrique Classique", family: "Cordes", price_per_day: 10, description: "Etat correct, achetée en 2008.")

guitare_acoustique = Instrument.create!(owner: thomas, name: "Guitare Acoustique Classique", family: "Cordes", price_per_day: 10, description: "Etat correct, achetée en 2004.")

harpe = Instrument.create!(owner: thomas, name: "Harpe de concert", family: "Cordes", price_per_day: 25, description: "Très bon état, achetée en 2020")

hautbois = Instrument.create!(owner: thomas, name: "Hautbois", family: "Vents", price_per_day: 16, description: "Très bon état, achetée en 2019")

violon_1 = Instrument.create!(owner: thomas, name: "Kamânche Violon iranien", family: "Cordes", price_per_day: 25, description: "Très bon état, achetée en 1988")

mandoline = Instrument.create!(owner: miebi, name: "Mandoline", family: "Cordes", price_per_day: 10, description: "bon état, achetée en 1789")

ocarina_focalink = Instrument.create!(owner: miebi, name: "Ocarina Focalink", family: "Vents", price_per_day: 5, description: "Très bon état, achetée en 2017")

piano_1 = Instrument.create!(owner: miebi, name: "Piano 1-4 de queue", family: "Cordes", price_per_day: 50, description: "Très bon état, achetée en 2008")

piano_2 = Instrument.create!(owner: hippo, name: "Piano 1-4 de queue", family: "Cordes", price_per_day: 50, description: "Très bon état, achetée en 2009")

saxophone_1 = Instrument.create!(owner: hippo, name: "Saxophone Jimmy Sax", family: "Cuivres", price_per_day: 20, description: "Bon état, achetée en 2011.")

saxophone_2 = Instrument.create!(owner: hippo, name: "Saxophone Alto", family: "Cuivres", price_per_day: 20, description: "Bon état, achetée en 1999.")

saxophone_3 = Instrument.create!(owner: fx, name: "Saxophone Ténor", family: "Cuivres", price_per_day: 20, description: "Bon état, achetée en 1983.")

trombone_a_coulisse = Instrument.create!(owner: fx, name: "Trombone à coulisse", family: "Cuivres", price_per_day: 20, description: "Très bon état, achetée en 2000.")

trompette = Instrument.create!(owner: fx, name: "Trompette", family: "Cuivres", price_per_day: 15, description: "Bon état, achetée en 2004.")

tuba = Instrument.create!(owner: miebi, name: "Tuba", family: "Cuivres", price_per_day: 20, description: "Très bon état, achetée en 2006.")

violon_2 = Instrument.create!(owner: thomas, name: "Violon 1900", family: "Cordes", price_per_day: 20, description: "Très bon état, achetée en 2014.")

violon_3 = Instrument.create!(owner: hippo, name: "Violon Violon Charles Bailly 1924", family: "Cordes", price_per_day: 20, description: "Très bon état, achetée en 2021.")

puts "creating reservations"

Reservation.create!(instrument: contrebasse, renter: thomas, start_date: "2021-03-01", end_date: "2021-03-02", status: "declined", total_price: 15)
Reservation.create!(instrument: tuba, renter: miebi, start_date: "2021-01-02", end_date: "2021-01-04", status: "accepted", total_price: 40)
Reservation.create!(instrument: trombone_a_coulisse, renter: fx, start_date: "2020-08-02", end_date: "2020-08-06", status: "pending", total_price: 80)
Reservation.create!(instrument: saxophone_2, renter: hippo, start_date: "2020-12-14", end_date: "2020-12-24", status: "accepted", total_price: 200)
Reservation.create!(instrument: saxophone_3, renter: thomas, start_date: "2021-03-19", end_date: "2021-03-23", status: "accepted", total_price: 80)
Reservation.create!(instrument: piano_1, renter: miebi, start_date: "2021-01-10", end_date: "2021-01-18", status: "pending", total_price: 400)
Reservation.create!(instrument: piano_2, renter: fx, start_date: "2020-08-15", end_date: "2020-08-20", status: "declined", total_price: 250)
Reservation.create!(instrument: hautbois, renter: hippo, start_date: "2020-12-07", end_date: "2020-12-10", status: "pending", total_price: 48)
Reservation.create!(instrument: violon_1, renter: thomas, start_date: "2021-04-01", end_date: "2021-04-02", status: "pending", total_price: 25)
Reservation.create!(instrument: violon_2, renter: miebi, start_date: "2021-05-02", end_date: "2021-05-04", status: "declined", total_price: 40)
Reservation.create!(instrument: mandoline, renter: fx, start_date: "2020-04-02", end_date: "2020-04-06", status: "accepted", total_price: 40)
Reservation.create!(instrument: guitare_electrique_1, renter: hippo, start_date: "2020-11-14", end_date: "2020-11-24", status: "declined", total_price: 200)

puts "finish"












