Owner.destroy_all
Pet.destroy_all
School.destroy_all
Trainer.destroy_all
Lesson.destroy_all
Appointment.destroy_all

#Owners
o1 = Owner.create(name: "Danielle", username: "DogLvr", password_digest: "Dogs4life")
o2 = Owner.create(name: "Cathy", username: "CrazyCatLady", password_digest: "2ManyCats")
#Pets
p1 = Pet.create(name: "Fluffy", species: "dog", age: 3, gender: "Female", owner_id: o1.id)
p2 = Pet.create(name: "Nym", species: "dog", age: 7, gender: "Female", owner_id: o1.id)
p3 = Pet.create(name: "Whiskers", species: "cat", age: 12, gender: "Male", owner_id: o2.id)

#Schools
s1 = School.create(name: "Good Karma Training", location: "Montgomery St, Jersey City, NJ 07302", description: "Obedience training can improve the level of companionship between you and your dog. It is important to establish that you are the pack leader. I can teach you and your dog the rules and boundaries of a healthy pack.", phone_number: 2012527627)
s2 = School.create(name: "Empire of the Dog Brooklyn", location: "415 Grand St # 1, Brooklyn, NY 11211", description: "Empire of the Dog in Brooklyn has been training NYC's friendliest pet dogs for 20 yrs. Founder Denise Herman has authored multiple ebooks and has written for TheBark magazine. Empire of the Dog offers puppy classes in Brooklyn, and private Instruction throughout the five boroughs. They specialize in quick, creative solutions to your dog problems.", phone_number: 9177235233)
s3 = School.create(name: "School for the Dogs", location: "92 East 7th Street, New York, NY 10009", description: "Since 2011, School For The Dogs has been helping owners and their dogs thrive in New York City. Using humane training methods, our Certified Trainers will help you change your dog’s behavior, cultivate leadership and improve your relationship.", phone_number: 2123533647)
s4 = School.create(name: "Dog School Training NY", location: "1454 72nd St, Brooklyn, NY 11228", description: "Dog Training School NY specializes in personalized private in home dog training. Offering several dog training programs that are tailored to your dog(s) needs.", phone_number: 7187046821)
s5 = School.create(name: "Tanattus Spa and Training School", location: "200 Avenue L, Newark, NJ 07105", description: "We at Tanattus will always try to offer the best service for our furry clients.", phone_number: 9732895756)
s6 = School.create(name: "The Art Of K9", location: "33A Nepperhan Ave, Elmsford, NY 10523", description: "Dog Training and Behavior Modification Service for any breed, any size, any problem", phone_number: 9149805527)
s7 = School.create(name: "Urban K-9 Dog Training", location: "314 Carroll St, Brooklyn, NY 11231", description: "Based in Brooklyn, Urban K-9 offers a full range of private dog training programs as well as group classes in and around NYC.", phone_number: 3474162535)
s8 = School.create(name: "Yuruani Olguin Dog Training", location: "127 W 26th St, New York, NY 10001", description: "Dogs do speak, but only to those who know how to listen.", phone_number: 6469484455)
s9 = School.create(name: "Andrea Arden Dog Training", location: "32 W 25th St, New York, NY 10010", description: "Since 1994, we have created a team of experienced and talented trainers who are leaders in the field of pet dog training. In our private sessions and group classes we teach people how to navigate the potential challenges of life with their dogs in New York City and bring out the best in their dogs.", phone_number: 2124149597)
s10 = School.create(name: "The Dog Institute of Williamsburg", location: "125 Roebling St, Brooklyn, NY 11211", description: "The Dog Institute of Williamsburg, Brooklyn is a center for puppies and dogs to learn, socialize, play and rest. Our goal is to help dogs and their humans develop positive communication skills and friendship. We celebrate the use of 100% positive reinforcement training.", phone_number: 3472760882)
s11 = School.create(name: "NY Clever K9 Inc. Dog Behavior Expert, Dog Training", location: "69-15 69th Pl, Glendale, NY 11385", description: "There is hope for you and your dog!", phone_number: 9175896296)
#s11 = School.create(name: "", location: "", description: "", phone_number: 9175896296)

#Trainers
t1 = Trainer.create(name: "David", bio: "I love dogs. I have been training dogs of all ages for 10 years.", school_id: s1.id, username: "Davidtrainer", password_digest: "dogsrcool")
t2 = Trainer.create(name: "Andrea", bio: "I am the cat whisperer. I will work with your cat to best suit their individual needs", school_id: s2.id, username: "CatWhisperer", password_digest: "cats3evr")
t3 = Trainer.create(name: "Steve", bio: "I have 30+ years of experience training dogs. I specialize in obedience training.", school_id: s2.id, username: "SteveH", password_digest: "123abc")
t4 = Trainer.create(name: "Kimberly", bio: "My name is Kimberly. I became interested in dog training and dog behavior early in my childhood while watching my father train our first dog. I am a Certified Master Dog Trainer and I have trained many different kinds of dogs and their owners.", school_id: s4.id, username: "Kimtrainer", password_digest: "kimdgny")
#Lessons
l1 = Lesson.create(name: "Cool Tricks", date: DateTime.new(2019, 7, 28, 10, 00).to_s, capacity: 10, species: "dog", trainer_id: t1.id, school_id: s1.id, owner_participation: true, description: "Your dog will learn all sorts of cool new tricks!", price: 50)
l2 = Lesson.create(name: "Ruby on Tails", date: DateTime.new(2019, 7, 28, 18, 30).to_s, capacity: 15, species: "dog", trainer_id: t1.id, school_id: s1.id, owner_participation: false, description: "Ruby on Rails for dogs", price: 17000)
l3 = Lesson.create(name: "Obedience 101", date: DateTime.new(2019, 8, 8, 12, 00).to_s, capacity: 20, species: "dog", trainer_id: t3.id, school_id: s1.id, owner_participation: false, description: "Basic obedience training for dogs.", price: 50)
l4 = Lesson.create(name: "Bonding with Your Cat", date: DateTime.new(2019, 8, 28, 16, 30).to_s, capacity: 5, species: "cat", trainer_id: t2.id, school_id: s2.id, owner_participation: true, description: "Get to know your cat better!", price: 150)
l1 = Lesson.create(name: "Single Training Sessions", date: DateTime.new(2019, 7, 28, 10, 00).to_s, capacity: 1, species: "dog", trainer_id: t1.id, school_id: s6.id, owner_participation: false, description: "Single Training Sessions are on a go as needed basis.", price: 200)
l1 = Lesson.create(name: "Cool Tricks", date: DateTime.new(2019, 7, 28, 10, 00).to_s, capacity: 10, species: "dog", trainer_id: t1.id, school_id: s1.id, owner_participation: true, description: "Your dog will learn all sorts of cool new tricks!", price: 50)
#Appointments
a1 = Appointment.create(lesson_id: l1.id, pet_id: p1.id)
a2 = Appointment.create(lesson_id: l2.id, pet_id: p1.id)
a3 = Appointment.create(lesson_id: l3.id, pet_id: p2.id)
a4 = Appointment.create(lesson_id: l4.id, pet_id: p3.id)
