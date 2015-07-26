# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ws = Teacher.create(email: "william.shakespeare@teacher.com",
               password: "password",
               password_confirmation: "password",
               first_name: "William",
               last_name: "Shakespeare",
               education: "King's New School",
               motto: "All the world's a stage, and all the men and women merely players: they have their exits and their entrances; and one man in his time plays many parts...",
               hometown: "Warwickshire, England",
               hobbies: "Playwriting, poetry, acting",
               advice: "Good frend for Iesvs sake forbeare,\nTo digg the dvst encloased heare.\nBleste be Middle English the man that spares thes stones,\nAnd cvrst be he that moves my bones.",
               strengths: "Possibly the greatest English writer ever, good hair",
               other_languages_spoken: "Latin, French",
               personal_message: "###Markdown is great\nWe can use it to write in **bold** and *italics*")

ts = Teacher.create(email: "tupac.shakur@teacher.com",
               password: "password",
               password_confirmation: "password",
               first_name: "Tupac",
               last_name: "Shakur",
               education: "Balitmore School of the Arts",
               motto: "My mama always used to tell me if you can’t find somethin’ to live for, you best find somethin’ to die for.",
               hometown: "East Harlem, then on to the west side",
               hobbies: "Gangbanging, chillin', hip hop",
               advice: "We gotta start making changes. Let's change the way we live, lets change the way we eat and lets change the way we treat each other. You see the old way wasn't working so it's on us to do what we gotta do, to survive.",
               strengths: "I give Shakespeare a run for his dollaz.",
               other_languages_spoken: "",
               personal_message: "###Markdown is great\nWe can use it to write in **bold** and *italics*")
ts.avatar = File.open("public/images/tupac.jpg")
ts.save!

ts = Teacher.create(email: "goku@teacher.com",
               password: "password",
               password_confirmation: "password",
               first_name: "Goku",
               last_name: "",
               education: "Turtle School",
               motto: "I am the hope of the Universe. I am the answer to all living things that cry out for peace. I am protector of the innocent. I am the light in the darkness. I am truth.",
               hometown: "Planet Vegeta",
               hobbies: "Defending the universe",
               advice: "You see when you take life, you live deep in fear that your life will be taking away as well, we all need to read what we do there's question about it. Because when you harm others, you only just harming yourself",
               strengths: "Ki Blast, Kamehameha, Spirit Bomb",
               other_languages_spoken: "",
               personal_message: "###Markdown is great\nWe can use it to write in **bold** and *italics*")
ts.avatar = File.open("public/images/goku.png")
ts.save!

ts = Teacher.create(email: "newman@teacher.com",
               password: "password",
               password_confirmation: "password",
               first_name: "Newman",
               last_name: "",
               education: "JFK High School",
               motto: "When you control the mail, you control information.",
               hometown: "New York City",
               hobbies: "Scheming, Calzone",
               advice: "All right! But hear me and hear me well! The day will come, oh yes, mark my words, Seinfeld! Your day of reckoning is coming, when an evil wind will blow through your little playworld and wipe that smug smile off your face! And I'll be there in all my glory, watching, watching as it all comes crumbling down!",
               strengths: "Climbing trees like a ring-tailed lemur.",
               other_languages_spoken: "",
               personal_message: "###Markdown is great\nWe can use it to write in **bold** and *italics*")
ts.avatar = File.open("public/images/newman.jpg")
ts.save!
