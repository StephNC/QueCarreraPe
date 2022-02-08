# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Career.destroy_all
Institution.destroy_all
Event.destroy_all

puts "Creado carreras"
# Career.create(name: "Ingeniería Industrial", area: "Ingeniería", duration: 5, profile: "Mejora de procesos", description: "abc")
# Career.create(name: "Medicina", area: "Ingeniería", duration: 7, profile: "abc", description: "abc")
# Career.create(name: "Administración", area: "Ingeniería", duration: 5, profile: "abc", description: "abc")
# Career.create(name: "Derecho", area: "Ingeniería", duration: 6, profile: "abc", description: "abc")
# Career.create(name: "Arquitectura", area: "Ingeniería", duration: 5, profile: "abc", description: "abc")

puts "Creando eventos"
# Event.create(name: "abc", date: "2022 February 15", modality: "virtual", description: "abc")

puts "Creando Instituciones"
# Institution.create(name: "Universidad Nacional de ingenieria", address: "Lima", phone: 999666999, email: "sec_general@uni.edu.pe", url: "https://www.uni.edu.pe/", description: "Es una institución educativa fundada en 1876 por el ingeniero polaco Eduardo de Habich, con la denominación de Escuela Especial de Construcciones Civiles y de Minas del Perú, conocida tradicionalmente como Escuela de Ingeniero y convertida en universidad en 1955 en la UNIVERSIDAD NACIONAL DE INGENIERIA (UNI). Hoy es el primer y principal centro de formación de ingenieros, arquitectos y científicos de nuestro país.")
# Institution.create(name: "Universidad Nacional Mayor de San Marcos", address: "Lima", phone: 6197000, email: "vrap@unmsm.edu.pe", url: "https://www.uni.edu.pe/", description: "Es una universidad pública considerada la institución educativa más importante, reconocida y representativa a nivel nacional, es reconocida como la universidad más antigua de América, por lo que figura en documentos y publicaciones oficiales como «Universidad del Perú, Decana de América»")
# Institution.create(name: "Universidad Peruana de Ciencias Aplicadas", address: "Lima", phone: 6105030, email: "it.service@upc.edu.pe", url: "https://www.upc.edu.pe/", description: "Es una universidad privada fundada el 5 de enero de 1994, como una institución educativa basada en la creatividad y la innovación. Hoy, es la primera universidad global del Perú, ocupando por siete años consecutivos el 1° lugar en Internacionalidad")
# Institution.create(name: "Universidad Nacional de Trujillo", address: "Trujillo", phone: 44209020, email: "tdsgunt@unitru.edu.pe", url: "https://www.unitru.edu.pe/", description: "Universidad pública peruana ubicada en Trujillo. Fue fundada el 10 de mayo de 1824 por Simón Bolívar y José Faustino Sánchez Carrión, siendo la cuarta universidad más antigua del país y la primera fundada en la época republicana")
# Institution.create(name: "Instituto de Educación Superior Tecnológico Público Eleazar Guzmán Barrón", address: "Huaraz", phone: 43422572, email: "informes@iegb.edu.pe", url: "https://iegb.edu.pe/", description: "El IESTP Eleazar Guzmán Barrón es una institución educativa con más de 35 años de experiencia brindando un servicio educativo de calidad, con el propósito de formar profesionales técnicos de primera línea, líderes a nivel local, regional y nacional.")
# Institution.create(name: "Pontificia Universidad Católica del Perú", address: "Lima", phone: 16262000, email: "rectorado@pucp.edu.pe", url: "https://www.pucp.edu.pe/", description: "Es una universidad privada fundada el 24 de marzo de 1917 por el sacerdote Jorge Dintilhac, de la Congregación de los Sagrados Corazones, como Universidad Católica del Perú, siendo la universidad privada más antigua del país")
# Institution.create(name: "Universidad Peruana Cayetano Heredia", address: "Lima", phone: 14363852, email: "outi@oficinas-upch.pe/", url: "https://www.cayetano.edu.pe/cayetano/es/", description: "Es una universidad privada peruana sin fines de lucro, fundada el 22 de septiembre de 1961, por un grupo de docentes de la Facultad de Medicina Humana San Fernando de la Universidad Nacional Mayor de San Marcos, liderada por los doctores Honorio Delgado y Alberto Hurtado Abadía, siendo la segunda universidad privada más antigua del país, así como una de las mejores a nivel nacional")
