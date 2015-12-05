Genre.destroy_all
Genre.create!(name: "Programming")
Genre.create!(name: "Science Fiction")

Book.destroy_all
Book.create!(title: "Pragmatic Programmer", rating: 5, author: "Dave Thomas", genre: Genre.first)
Book.create!(title: "Ender’s Game", rating: 4, author: "Orson Scott Card", genre: Genre.last)
