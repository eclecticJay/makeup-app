# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	clients = Client.create({first_name: "Maylin ",
	last_name: "Rodriguez",
	zipcode: "10458",
	email: "may.lin@gmail.com",
	password: "may"
	}),
	clients = Client.create({first_name: "Maykeline ",
	last_name: "Rodriguez",
	zipcode: "10458",
	email: "may.keline@gmail.com",
	password:"mayk"
	}),
	makeup_artists = MakeupArtist.create({
	first_name: "Natasha",
	last_name: "Paulino",
	zipcode: "11101",
	email: "natashapaulino@gmail.com",
	password: "tasha"
	}),
	makeup_artist = MakeupArtist.create({
	first_name: "Ashley",
	last_name: "Vinasco",
	zipcode: "10467",
	email: "ashley_vinasco@yahoo.com",
	password: "ashcash"
	}),
	appointments = Appointment.create({
		client_id: "1",
		makeup_artist_id: "1",
		location: "Queens",
		time: "7:30am",
		}),
	appointments = Appointment.create({
		client_id: "2",
		makeup_artist_id: "2",
		location: "Bronx",
		time: "12:00pm",
		}),
	specialties = Specialty.create({
		specialty: "Prom"
		}),
	specialties = Specialty.create({
		specialty: "Bridal"
		}),
	specialties = Specialty.create({
		specialty: "Event"
		}),specialties = Specialty.create({
		specialty: "Special Effects"
		}),
		artist_specialties = ArtistSpecialty.create({
			makeup_artist_id: "1",
			specialty_id: "1"
			}),
		artist_specialties = ArtistSpecialty.create({
			makeup_artist_id: "1",
			specialty_id: "2"
			}),
		artist_specialties = ArtistSpecialty.create({
			makeup_artist_id: "1",
			specialty_id: "4"
			}),
		artist_specialties = ArtistSpecialty.create({
			makeup_artist_id: "2",
			specialty_id: "1"
			}),
		artist_specialties = ArtistSpecialty.create({
			makeup_artist_id: "2",
			specialty_id: "2"
			}),
		artist_specialties = ArtistSpecialty.create({
			makeup_artist_id: "2",
			specialty_id: "3"
			}),
		inventories = Inventory.create({
			makeup_artist_id:"1",
			makeup_id:"1"
			}),
			inventories = Inventory.create({
			makeup_artist_id:"2",
			makeup_id:"2"
			}),	
			makeups = Makeup.create({
				makeup_items:"concealer",
				makeup_tools:"fluffy powder brush"
				}),
			makeups = Makeup.create({
				makeup_items:"foundation",
				makeup_tools:"blush brush"
				}),
			makeups = Makeup.create({
				makeup_items:"mascara",
				makeup_tools:"eyeshadow brush"
				}),
			makeups = Makeup.create({
				makeup_items:"lipstick",
				makeup_tools:"eyeliner brush"
				}),
			pictures = Picture.create({
				makeup_artist_id: "1",
				client_id:"1",
				photos:"event"
				})
			pictures = Picture.create({
				makeup_artist_id: "2",
				client_id:"2",
				photos:"bridal"
				})
