# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'date'

20.times do
  Doctor.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, specialty: ["Proctologue", "Urologue", "Légiste", "Plasticien", "Généraliste", "Dermatologue", "Dentiste", "Ophtalmologue", "Podologue", "Neurologue", "Chirurgien", "Gastroentherologue"].sample, zip_code: Faker::Address.zip_code.to_s)
end

50.times do
  Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end
#https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/DateTime.html <=== DateTime doc
30.times do
  Appointment.create(date: Faker::Date.forward(days: 30))
end
