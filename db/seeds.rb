# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(
    email: "esteban@email.com", 
    password: "123456", 
    password_confirmation: "123456", 
    name: "Esteban",
    phone: "+56912345678",
    about: "Empleador",
    admin: true
)

6.times do 
    JobOffer.create(
        job: Faker::Job.position,
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec nisi velit. Suspendisse blandit enim eget mauris varius efficitur. In commodo feugiat ligula ac gravida. In et tincidunt sapien, a venenatis elit."
    )
end