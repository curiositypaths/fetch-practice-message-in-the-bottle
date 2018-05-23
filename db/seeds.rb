# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


students = ["Austin Paley", "Brie Morales", "Yong-Nicholas Kim", "Gui Bin Zhang", "William Dale", "Roger Perez", "Michael Myung", "Shun Yao", "Ryan O'Toole", "AHAMED ABBAS", "Daniel Brazel", "Joe Greiner", "Matthew Talbot", "Shawn Tannor", "Lane Miller", "Jesse Horwitz", "Celeste Gerard", "Ian Pollack", "Ryan Hu"]

students.each do |student_name|
    User.create({name:student_name})
end