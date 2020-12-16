require "json"

class Individu
	attr_accessor :first_name , :last_name , :email , :member

	def initialize(first_name , last_name , email , member)
		@nom = first_name
		@prenom = last_name
		@email = email
		@telephone = member
	end

	def save
		info = {first_name: @nom , last_name: @prenom , email: @email , member: @telephone}.to_json
		open("Personne.json" , "a") do |x|
			x.puts info
		end
	end
end