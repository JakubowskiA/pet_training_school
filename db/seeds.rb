Trainer.destroy_all
User.destroy_all
Pet.destroy_all
School.destroy_all
Lesson.destroy_all
Appointment.destroy_all

#Owners
u1 = User.create(name: "Danielle", username: "DogLvr", password: "Dogs4life")
u2 = User.create(name: "Cathy", username: "CrazyCatLady", password: "2ManyCats")
#Pets
p1 = Pet.create(name: "Fluffy", species: "dog", age: 3, gender: "Female", user_id: u1.id, img_url: "/app/assets/images/dog1.jpg")
p2 = Pet.create(name: "Nym", species: "dog", age: 7, gender: "Female", user_id: u1.id, img_url: "http://santansun.com/wp-content/uploads/2018/11/5b7fdeab1900001d035028dc.jpeg")
p3 = Pet.create(name: "Whiskers", species: "cat", age: 12, gender: "Male", user_id: u2.id, img_url: "https://img.purch.com/w/660/aHR0cDovL3d3dy5saXZlc2NpZW5jZS5jb20vaW1hZ2VzL2kvMDAwLzEwNC84MTkvb3JpZ2luYWwvY3V0ZS1raXR0ZW4uanBn")

#Schools
s1 = School.create(name: "Good Karma Training", location: "Montgomery St, Jersey City, NJ 07302", description: "Obedience training can improve the level of companionship between you and your dog. It is important to establish that you are the pack leader. I can teach you and your dog the rules and boundaries of a healthy pack.", phone_number: 2012527627)
s2 = School.create(name: "Empire of the Dog Brooklyn", location: "415 Grand St # 1, Brooklyn, NY 11211", description: "Empire of the Dog in Brooklyn has been training NYC's friendliest pet dogs for 20 yrs. Founder Denise Herman has authored multiple ebooks and has written for TheBark magazine. Empire of the Dog offers puppy classes in Brooklyn, and private Instruction throughout the five boroughs. They specialize in quick, creative solutions to your dog problems.", phone_number: 9177235233)
s3 = School.create(name: "School for the Dogs", location: "92 East 7th Street, New York, NY 10009", description: "Since 2011, School For The Dogs has been helping owners and their dogs thrive in New York City. Using humane training methods, our Certified Trainers will help you change your dog’s behavior, cultivate leadership and improve your relationship.", phone_number: 2123533647)
s4 = School.create(name: "Dog Training School NY", location: "1454 72nd St, Brooklyn, NY 11228", description: "Dog Training School NY specializes in personalized private in home dog training. Offering several dog training programs that are tailored to your dog(s) needs.", phone_number: 7187046821)
s5 = School.create(name: "Tanattus Spa and Training School", location: "200 Avenue L, Newark, NJ 07105", description: "We at Tanattus will always try to offer the best service for our furry clients.", phone_number: 9732895756)
s6 = School.create(name: "The Art Of K9", location: "33A Nepperhan Ave, Elmsford, NY 10523", description: "Dog Training and Behavior Modification Service for any breed, any size, any problem", phone_number: 9149805527)
s7 = School.create(name: "Urban K-9 Dog Training", location: "314 Carroll St, Brooklyn, NY 11231", description: "Based in Brooklyn, Urban K-9 offers a full range of private dog training programs as well as group classes in and around NYC.", phone_number: 3474162535)
s8 = School.create(name: "Yuruani Olguin Dog Training", location: "127 W 26th St, New York, NY 10001", description: "Dogs do speak, but only to those who know how to listen.", phone_number: 6469484455)
s9 = School.create(name: "Andrea Arden Dog Training", location: "32 W 25th St, New York, NY 10010", description: "Since 1994, we have created a team of experienced and talented trainers who are leaders in the field of pet dog training. In our private sessions and group classes we teach people how to navigate the potential challenges of life with their dogs in New York City and bring out the best in their dogs.", phone_number: 2124149597)
s10 = School.create(name: "The Dog Institute of Williamsburg", location: "125 Roebling St, Brooklyn, NY 11211", description: "The Dog Institute of Williamsburg, Brooklyn is a center for puppies and dogs to learn, socialize, play and rest. Our goal is to help dogs and their humans develop positive communication skills and friendship. We celebrate the use of 100% positive reinforcement training.", phone_number: 3472760882)
s11 = School.create(name: "NY Clever K9 Inc. Dog Behavior Expert, Dog Training", location: "69-15 69th Pl, Glendale, NY 11385", description: "There is hope for you and your dog!", phone_number: 9175896296)
s11 = School.create(name: "Jennifer Van de Kieft, Certified Feline Training and Behavior Specialist", location: "195 Adams St, Brooklyn, NY 11201", description: "", phone_number: 9174393878)

#Trainers
t1 = Trainer.create(name: "David", bio: "I love dogs. I have been training dogs of all ages for 10 years.", school_id: s1.id)
t2 = Trainer.create(name: "Andrea", bio: "I am the cat whisperer. I will work with your cat to best suit their individual needs", school_id: s2.id)
t3 = Trainer.create(name: "Steve", bio: "I have 30+ years of experience training dogs. I specialize in obedience training.", school_id: s2.id)
t4 = Trainer.create(name: "Kimberly", bio: "My name is Kimberly. I became interested in dog training and dog behavior early in my childhood while watching my father train our first dog. I am a Certified Master Dog Trainer and I have trained many different kinds of dogs and their owners.", school_id: s4.id)
t5 = Trainer.create(name: "Kate Senisi", bio: "Kate’s specialty is working with dogs who are dealing with urban-specific behavior challenges including anxiety and aggression. Always taking an integrative approach, she develops behavior plans that are easy to implement and yield results.", school_id: s3.id)
t6 = Trainer.create(name: "Annie Grossman", bio: "Annie loves to find fun and engaging ways to help both dogs and humans approach training as an exercise in better understanding all animal behavior. She specializes in working with puppies, teaching tricks, and prepping dogs for commercial work.", school_id: s3.id)
t7 = Trainer.create(name: "Anna Ostroff", bio: "Anna loves making training enjoyable by giving humans and dogs the tools to communicate. She has worked in rescue since 2011, the majority at Mighty Mutts, where she serves as Community Outreach Coordinator, and helps with behavior cases.", school_id: s3.id)
t8 = Trainer.create(name: "Andrea Arden", bio: "Andrea founded Andrea Arden Dog Training in 1994, and has been named the best dog trainer in New York by New York, W, Time Out and Quest magazines and the Daily News.", school_id: s9.id)
t9 = Trainer.create(name: "Joanne Bassinger", bio: "Jo Anne has been part of our training team for close to 20 years. She brings to the company her 20 years of marine mammal training and animal care expertise with the New York Aquarium/Wildlife Conservation Society.", school_id: s9.id)
t10 = Trainer.create(name: "Jennifer Van de Kieft", bio: "Jennifer is a Certified Feline Training and Behavior Specialist through the Animal Behavior Institute (ABI).", school_id: s11.id)
t11 = Trainer.create(name: "Dani Santanella", bio: "Dani has been training for over 15 years, using motivational, results-oriented techniques to open lines of communication between dogs and their owners. ", school_id: s7.id)
t12 = Trainer.create(name: "Natasha Domanski", bio: "Natasha Domanski is a Canine Training and Behavior Specialist and is a Graduate of Star Mark Training Academy. ", school_id: s7.id)
t13 = Trainer.create(name: "MCClain Sullivan", bio: "McClain Sullivan is a graduate of the Starmark Academy for Professional Dog Trainers where she earned high marks for her work in the program.", school_id: s7.id)
t14 = Trainer.create(name: "Yuraini Olguin", bio: "Yuruani’s training is based on force-free techniques, taking into account all aspects of each individual dog’s situation, including breed, background, temperament and—very importantly—household environment. Yuruani is a graduate of the Animal Behavior College and mentors trainers in their program regularly. She is also a member of the Association for Pet Dog Trainers, and works closely with several rescue groups, rehabilitating dogs with behavioral issues to help them find their forever home.", school_id: s8.id)
t15 = Trainer.create(name: "Sana Bindra", bio: "Sana’s mission with each of her clients is to teach proper canine/human relationships built on positive interactions. By using only force-free methods, she shapes the desired canine behaviors in a consistent, quick and effective way. Sana graduated from the Animal Behavior College and is a member of the Association for Pet Dog Trainers. She teaches private lessons for owners and dogs, one-on-one training while owners are at work, and group classes.", school_id: s8.id)
# t16 = Trainer.create(name: "", bio: "", school_id: s11.id)
# t17 = Trainer.create(name: "", bio: "", school_id: s11.id)
#Lessons
l1 = Lesson.create(name: "Cool Tricks", date: DateTime.new(2019, 7, 28, 10, 00).to_s, capacity: 10, species: "dog", trainer_id: t1.id, school_id: s1.id, owner_participation: true, description: "Your dog will learn all sorts of cool new tricks!", price: 50)
l2 = Lesson.create(name: "Puppy Kindergarten", date: DateTime.new(2019, 7, 21, 19, 45).to_s, capacity: 15, species: "dog", school_id: s2.id, owner_participation: false, description: "All the skills you need", price: 45)
l3 = Lesson.create(name: "Puppy Kindergarten", date: DateTime.new(2019, 7, 28, 19, 45).to_s, capacity: 15, species: "dog", school_id: s2.id, owner_participation: false, description: "All the skills you need", price: 45)
l4 = Lesson.create(name: "Puppy Kindergarten", date: DateTime.new(2019, 8, 4, 19, 45).to_s, capacity: 15, species: "dog", school_id: s2.id, owner_participation: false, description: "All the skills you need", price: 45)
l5 = Lesson.create(name: "City Dog Manners I", date: DateTime.new(2019, 8, 3, 12, 00).to_s, capacity: 20, species: "dog", school_id: s2.id, owner_participation: false, description: "Basic obedience training for dogs.", price: 50)
l6 = Lesson.create(name: "City Dog Manners I", date: DateTime.new(2019, 8, 17, 12, 00).to_s, capacity: 20, species: "dog", school_id: s2.id, owner_participation: false, description: "Basic obedience training for dogs.", price: 50)
l7 = Lesson.create(name: "Bonding with Your Cat", date: DateTime.new(2019, 8, 28, 16, 30).to_s, capacity: 5, species: "cat", trainer_id: t2.id, school_id: s2.id, owner_participation: true, description: "Get to know your cat better!", price: 150)
l8 = Lesson.create(name: "Single Training Sessions", date: DateTime.new(2019, 7, 28, 10, 00).to_s, capacity: 1, species: "dog", trainer_id: t1.id, school_id: s6.id, owner_participation: false, description: "Single Training Sessions are on a go as needed basis.", price: 200)
l9 = Lesson.create(name: "Cat Care and Wellness", date: DateTime.new(2019, 7, 28, 10, 00).to_s, capacity: 1, species: "cat", trainer_id: t1.id, school_id: s11.id, owner_participation: true, description: "An in-home consultation to evaluate your cat's environmental and enrichment needs.", price: 200)
l10 = Lesson.create(name: "Reliable Recall", date: DateTime.new(2019, 6, 15, 9, 00).to_s, capacity: 20, species: "dog", trainer_id: t11.id, school_id: s7.id, owner_participation: true, description: "Recalls or come when called is the most important behavior your dog can learn. It gives you and your dog more freedom to enjoy the outdoors and it can keep them out of harms way. This class focusses on the tools to get your dog off leash.", price: 250)
l11 = Lesson.create(name: "Reliable Recall", date: DateTime.new(2019, 6, 22, 9, 00).to_s, capacity: 20, species: "dog", trainer_id: t11.id, school_id: s7.id, owner_participation: true, description: "Recalls or come when called is the most important behavior your dog can learn. It gives you and your dog more freedom to enjoy the outdoors and it can keep them out of harms way. This class focusses on the tools to get your dog off leash.", price: 250)
l12 = Lesson.create(name: "Reliable Recall", date: DateTime.new(2019, 6, 29, 9, 00).to_s, capacity: 20, species: "dog", trainer_id: t11.id, school_id: s7.id, owner_participation: true, description: "Recalls or come when called is the most important behavior your dog can learn. It gives you and your dog more freedom to enjoy the outdoors and it can keep them out of harms way. This class focusses on the tools to get your dog off leash.", price: 250)
l13 = Lesson.create(name: "Reliable Recall", date: DateTime.new(2019, 7, 13, 9, 00).to_s, capacity: 20, species: "dog", trainer_id: t11.id, school_id: s7.id, owner_participation: true, description: "Recalls or come when called is the most important behavior your dog can learn. It gives you and your dog more freedom to enjoy the outdoors and it can keep them out of harms way. This class focusses on the tools to get your dog off leash.", price: 250)
l14 = Lesson.create(name: "Puppy Class 5", date: DateTime.new(2019, 7, 9, 19, 15).to_s, capacity: 15, species: "dog", trainer_id: t14.id, school_id: s8.id, owner_participation: false, description: "Group sessions for basic obedience and behavior modification for puppies.", price: 325)
# l15 = Lesson.create(name: "", date: DateTime.new(2019, 8, 4, 19, 45).to_s, capacity: 10, species: "dog", school_id: s2.id, owner_participation: true, description: "", price: 45)

#Appointments
a1 = Appointment.create(lesson_id: l1.id, pet_id: p1.id)
a2 = Appointment.create(lesson_id: l2.id, pet_id: p1.id)
a3 = Appointment.create(lesson_id: l3.id, pet_id: p2.id)
a4 = Appointment.create(lesson_id: l4.id, pet_id: p3.id)
