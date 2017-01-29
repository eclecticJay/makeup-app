# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	clients = Client.create({first_name: "Sophia",
	last_name: "Rodriguez",
	zipcode: "10458",
	email: "sophiar@gmail.com",
	password: "sophia"
	}),
	clients = Client.create({first_name: "Emma",
	last_name: "Stone",
	zipcode: "10468",
	email: "emmas@gmail.com",
	password:"emma"
	}),
	clients = Client.create({first_name: "Maria",
	last_name: "Garcia",
	zipcode: "10478",
	email: "mariag@gmail.com",
	password:"maria"
	}),
	clients = Client.create({first_name: "Mary",
	last_name: "Smith",
	zipcode: "10488",
	email: "marys@gmail.com",
	password:"mary"
	}),
	clients = Client.create({first_name: "Jessica",
	last_name: "Hernandez",
	zipcode: "10498",
	email: "jessicah@gmail.com",
	password:"jessica"
	}),
	makeup_artists = MakeupArtist.create({
	first_name: "Marilia",
	last_name: "Matos",
	zipcode: "11101",
	email: "mariliam@gmail.com",
	password: "mari",
	bio:"Dominican-American teacher that loves make up so much decided to freelance in her free time"
	}),
	makeup_artist = MakeupArtist.create({
	first_name: "Ashley",
	last_name: "Vinasco",
	zipcode: "10467",
	email: "ashley_vinasco@yahoo.com",
	password: "ashcash",
	bio: "Young inspired city girl that is taking the makeup world by storm"
	}),
	appointments = Appointment.create({
		client_id: "1",
		makeup_artist_id: "1",
		location: "Queens",
		time: "12:30:00",
		date: "2017-1-15"
		}),
	appointments = Appointment.create({
		client_id: "2",
		makeup_artist_id: "1",
		location: "Queens",
		time: "12:30:00",
		date: "2017-1-20"
		}),
	appointments = Appointment.create({
		client_id: "3",
		makeup_artist_id: "1",
		location: "Bronx",
		time: "16:30:00",
		date: "2017-1-13"
		}),
	appointments = Appointment.create({
		client_id: "1",
		makeup_artist_id: "2",
		location: "Queens",
		time: "10:30:00",
		date: "2017-1-10"
		}),
	appointments = Appointment.create({
		client_id: "2",
		makeup_artist_id: "2",
		location: "Bronx",
		time: "16:30:00",
		date: "2017-1-13"
		}),
	appointments = Appointment.create({
		client_id: "3",
		makeup_artist_id: "2",
		location: "Bronx",
		time: "12:30:00",
		date: "2017-1-13"
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
				photos:"/img/portfolio/marilia.PNG"
				})
			pictures = Picture.create({
				makeup_artist_id: "2",
				client_id:"2",
				photos:"/img/portfolio/ash.PNG"
				})
