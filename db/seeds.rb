#Owners
o1 = Owner.create(name: "Danielle", username: "DogLvr", password: "Dogs4life")
#Pets
p1 = Pet.create(name: "Fluffy", species: "dog", age: 3, gender: "Female", owner_id: o1.id)

#Schools
s1 = School.create(name: "Flatiron Pet School", location: "NYC", description: "We teach dogs how to code!")
#Trainers
t1 = Trainer.create(name: "David", bio: "I love dogs. I have been training dogs of all ages for 10 years.", school_id: s1.id, username: "Davidtrainer", password: "dogsrcool")
#Lessons
l1 = Lesson.create(name: "Cool Tricks", datetime: Datetime.new(2019, 07, 28, 10, 0).to_s, capacity: 10, species: "dog", trainer_id: t1.id, school_id: s1.id, owner_participation: true, description: "Your dog will learn all sorts of cool new tricks!", price: 50)
#Appointments
a1 = Appointment.create(lesson_id: l1.id, pet_id: p1.id)
