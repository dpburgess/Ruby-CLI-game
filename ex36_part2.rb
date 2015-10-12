#can try and make a module out of this file by grouping parts together.
#just include the module in the class if you want the class to use a module
#if the module is defined in another file then you need to require that file first
# module Characters
# end

#In def self.show, the keyword self denotes that the method show is being defined in the context of the Class itself, not its instances. 
#Any method definition without the self qualifier is by default an instance method. 


	def theEnd
		puts "You died, please try again!"
		exit
	end

	def neverEscape
		puts "\n"
		puts "Bad news.  No one ever hears you."
		theEnd	
	end

	class Character
		#life
		#attack
		#alive

	end

	class Monster < Character
		attr_accessor :life
		def initialize
			@life = 12
		end
		#def life = life
		#	@life = life
		#end
		def attack (opponent)
			puts 'The monster has attacked.'
			opponent.life -= 4
			puts opponent.life
			opponent.alive
		end
		def alive
			if @life <= 0
				puts "You've killed the monster."
				exit
			end
		end
	end
	#class Hiker < Character  - this shows that hiker inherits from character.  The class on the left inherits from the class on the right.  The class on the left is the subclass,
		#derived, or child class and the class on the right is a superclass, base, or parent class.
	
	#A class can only inherit from one class at a time (i.e. a class can inherit from a class that inherits from another class which inherits from another class, 
		#but a single class can not inherit from many classes at once).
	
	#There will be situations where certain properties of the super-class should not be inherited by a particular subclass.
	class Hiker < Character
		attr_accessor :life
		def initialize
			@life = 10
		end
		def attack (opponent)
			puts 'You\'ve decided to attack.'
			opponent.life -= 3
			puts opponent.life
			opponent.alive
		end
		def alive
			if @life <= 0
				puts "Oh no, you died. Game over."
				exit
			end
		end
	end



	#need to make a way for the user to decide they want to attack
	#need to use inheritance and create a base character class
	#connect to github account

