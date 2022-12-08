# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# medicine1 = Medicine.create!(name: "Antibiotics", description: "These are Antibiotics but can be used for inflamation too", pharmacist_id: 1, user_id: 1)
p "Seeding Pharmacies"
pharmacy1 = Pharmacy.create!(name: "Good Kind", email: "goodkind@gmail.com", location: "Nairobi CBD", address: "234 Mama Ngina Street", phone_number: "1234213424")
pharmacy2 = Pharmacy.create!(name: "Feel Good Pharm", email: "feelgood@pharm.com", location: "Ngong Road", address: "111 Prestige", phone_number: "78781236")
pharmacy3 = Pharmacy.create!(name: "The Small Pharma", email: "smallpharma@gmail.com", location: "Nairobi CBD", address: "Tom Mboya Street", phone_number: "78655325")

p "seeding medicine"
medicine1 = Medicine.create!(name: "Ibuprofen", description: "Ibuprofen is a nonsteroidal anti-inflammatory drug that is used for treating pain, fever, and inflammation. This includes painful menstrual periods, migraines, and rheumatoid arthritis.", image_url: "https://bit.ly/3Fa0tJp", pharmacy_id: pharmacy1.id)
medicine2 = Medicine.create!(name: "Adderall", description: "Adderall is used to treat attention deficit hyperactivity disorder (ADHD) and narcolepsy", image_url: "https://bit.ly/3P7uyhx", pharmacy_id: pharmacy2.id)
medicine3 = Medicine.create!(name: "Amoxicillin", description: "Amoxicillin is an antibiotic medication used to treat a number of bacterial infections. These include middle ear infection, strep throat, pneumonia, skin infections, and urinary tract infections among others", image_url: "https://bit.ly/3HgtlTg", pharmacy_id: pharmacy3.id)
p "completed seedings"

user1 = User.create!(name: "admin", email: "admin@admin.com", password: "password", password_confirmation: "password", location: "Mombasa", phone_number: "1234356576")
p "Done seeding user"
