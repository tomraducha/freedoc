# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#creating x cities
require 'faker'
Appointment.destroy_all
Patient.destroy_all
Doctor.destroy_all
City.destroy_all
Specialty.destroy_all


10.times do
  cities = City.create(
    name: Faker::Address.city

  )
end
#creating x specialty

10.times do
  specialty = Specialty.create(
    name: Faker::Lorem.words(number: 1 )
  )
end


# Creating X times Patient

10.times do
  patient = Patient.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city_id: City.first.id
  )
end

# Creating X times Doctors

10.times do
  doctor = Doctor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    zip_code: rand(10_000..95_000),
    city_id: City.first.id
    
  )
end

# Creating X times Appointement

10.times do
  appointment = Appointment.create(
    doctor_id: rand(1..10),
    patient_id: rand(1..10),
    date: Faker::Date.between(from: 2.days.ago, to: 3.year.from_now),
    city_id: City.first.id
  )
end
puts"verification"