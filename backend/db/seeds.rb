# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pinar = User.create({name:'Pinar', email:'pinar@test.com', password:"12345678", password_confirmation:"12345678"})
melissa = Baby.create({name: 'Melissa', sex:'female', mother_id:1, birth_day:'16-02-2018'})
munir = User.create({name:'Munir', email:'munir@test.com', password:"12345678", password_confirmation:"12345678"})
hatice = User.create({name:'Hatice', email:'hatice@test.com', password:"12345678", password_confirmation:"12345678"})



melissa.caretakers << munir
melissa.caretakers << hatice

