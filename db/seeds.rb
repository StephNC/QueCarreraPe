# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creado carreras"
Career.create(name: "Ingeniería Industrial", area: "Ingeniería", duration: 5, profile: "Mejora de procesos", description: "abc")
Career.create(name: "Medicina", area: "Ingeniería", duration: 7, profile: "abc", description: "abc")
Career.create(name: "Administración", area: "Ingeniería", duration: 5, profile: "abc", description: "abc")
Career.create(name: "Derecho", area: "Ingeniería", duration: 6, profile: "abc", description: "abc")
Career.create(name: "Arquitectura", area: "Ingeniería", duration: 5, profile: "abc", description: "abc")

puts "Creando eventos"
Event.create(name: "abc", date: "2022 February 15", modality: "virtual", description: "abc")
