# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.destroy_all
Character.destroy_all
MovieCharacter.destroy_all

Movie.create(name: "Fellowship of the Ring", release_year: 2001, description: "Frodo begins his quest to destroy the ring")
Movie.create(name: "The Two Towers", release_year: 2002, description: "Frodo continues his journey with the Fellowship")
Movie.create(name: "Return of the King", release_year: 2003, description: "Frodo travels to Mordor and destroys the ring")

10.times do 
    characters = Faker::Movies::LordOfTheRings.character
    location = Faker::Movies::LordOfTheRings.location
  character = Character.create(name: characters, location: location)
end

10.times do
    MovieCharacter.create(movie_id: Movie.all.ids.sample, character_id: Character.all.ids.sample)

end
