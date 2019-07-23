require 'pry'
require_relative './book'
require_relative './author'

jane = Author.new("Jane Austen")
emily = Author.new("Emily Brontë")
georgette = Author.new("Georgette Heyer")

sense_and_sensibility = Book.new("Sense & Sensibility", jane, 119000)
emma = Book.new("Emma", jane, 155000)
pride_and_prejudice = Book.new("Pride & Prejudice", jane, 87000)
wuthering_heights = Book.new("Wuthering Height", emily, 122000)
april_lady = Book.new("April Lady", georgette, 87000)
arabella = Book.new("Arabella", georgette, 98000)
the_quiet_gent = Book.new("The Quiet Gentleman", georgette, 105000)
sylvester = Book.new("Sylvester", georgette, 119000)

binding.pry

0
