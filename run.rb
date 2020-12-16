require_relative "exemple.rb"

puts "vous voulez entrer une personne (o/n)"
reponse = gets.chomp.upcase.to_s

if(reponse == "O" || reponse == "OUI")
	puts "le nom"
	first_name = gets.chomp.upcase.to_s

	puts "le prenom"
	last_name = gets.chomp.to_s

	puts "son email"
	email = gets.chomp

	puts "son telephone"
	member = gets.chomp.to_i

	new_member = Individu.new(first_name , last_name , email , member)
	new_member.save

else
	puts "vous n\'avez pas ajouter quelqu\'un"
end