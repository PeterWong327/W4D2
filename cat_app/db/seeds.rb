# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat1 = Cat.create(color: 'orange', name: 'Garfield', birth_date: '2018/07/10', sex: 'M', description: 'fat and lazy')
cat2 = Cat.create(color: 'blue', name: 'Happy', birth_date: '1000/01/01', sex: 'M', description: 'sad and depressed')
cat3 = Cat.create(color: 'red', name: 'Dino', birth_date: '2010/05/05', sex: 'F')
