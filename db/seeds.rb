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
s1 = School.create(name: "Flatiron Pet School", location: "NYC", description: "We teach dogs how to code!")
s2 = School.create(name: "Pet School", location: "Philadelphia", description: "We offer the very best obedience training from experienced instructors.")
#Trainers
t1 = Trainer.create(name: "David", bio: "I love dogs. I have been training dogs of all ages for 10 years.", school_id: s1.id, username: "Davidtrainer", password_digest: "dogsrcool")
t2 = Trainer.create(name: "Andrea", bio: "I am the cat whisperer. I will work with your cat to best suit their individual needs", school_id: s2.id, username: "CatWhisperer", password_digest: "cats3evr")
t3 = Trainer.create(name: "Steve", bio: "I have 30+ years of experience training dogs. I specialize in obedience training.", school_id: s2.id, username: "SteveH", password_digest: "123abc")
#Lessons
l1 = Lesson.create(name: "Cool Tricks", date: DateTime.new(2019, 7, 28, 10, 00).to_s, capacity: 10, species: "dog", trainer_id: t1.id, school_id: s1.id, owner_participation: true, description: "Your dog will learn all sorts of cool new tricks!", price: 50)
l2 = Lesson.create(name: "Ruby on Tails", date: DateTime.new(2019, 7, 28, 18, 30).to_s, capacity: 15, species: "dog", trainer_id: t1.id, school_id: s1.id, owner_participation: false, description: "Ruby on Rails for dogs", price: 17000)
l3 = Lesson.create(name: "Obedience 101", date: DateTime.new(2019, 8, 8, 12, 00).to_s, capacity: 20, species: "dog", trainer_id: t3.id, school_id: s1.id, owner_participation: false, description: "Basic obedience training for dogs.", price: 50)
l4 = Lesson.create(name: "Bonding with Your Cat", date: DateTime.new(2019, 8, 28, 16, 30).to_s, capacity: 5, species: "cat", trainer_id: t2.id, school_id: s2.id, owner_participation: true, description: "Get to know your cat better!", price: 150)
#Appointments
a1 = Appointment.create(lesson_id: l1.id, pet_id: p1.id)
a2 = Appointment.create(lesson_id: l2.id, pet_id: p1.id)
a3 = Appointment.create(lesson_id: l3.id, pet_id: p2.id)
a4 = Appointment.create(lesson_id: l4.id, pet_id: p3.id)
