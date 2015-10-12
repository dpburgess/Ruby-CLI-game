#load 'ex36_part2.rb'
require_relative 'ex36_part2'
#Note that you say require 'filename', not require 'filename.rb'




#    Every if-statement must have an else.

#    If this else should never run because it doesn't make sense, then you must use a die function in the else that prints out an error message and dies, just like we did in the last exercise. This will find many errors.

#    Never nest if-statements more than two deep and always try to do them one deep.

#    Treat if-statements like paragraphs, where each if-elsif-else grouping is like a set of sentences. Put blank lines before and after.

#    Your boolean tests should be simple. If they are complex, move their calculations to variables earlier in your function and use a good name for the variable.


# => Modules are a way of grouping together methods, classes, and constants.

def chooseOpening
	puts "Do you want to go left, right, or straight?"
	print "> "
	direction = $stdin.gets.chomp

	puts case direction.downcase
	when 'left'
		puts "You are now in a large cavern and you think you hear bats."
		largeCavern
	when 'right'
		puts "You slip on a rock while going right and slide on a slope going pretty fast."
		slideOn
	when 'straight'
		puts "You go straight and then fall into a pit and die from hitting the bottom."
		theEnd
	else 
		puts "You didn't choose a direction, so try again."
		chooseOpening
	end
end

def beginhike
	puts "It's a typical saturday and you decide to go caving.  You arrive at the park, hike to the cave and are now at the front of the cave."
	puts "Do you still want to go in the cave?"
	print "> "
	caving = $stdin.gets.chomp

	if caving.downcase.include? 'yes'
		puts "You've entered the cave and can see three smaller openings to choose from."
		puts "\n |_|   |_|   |_| \n"
		chooseOpening
	elsif caving.downcase.include? 'no'
		puts "You chickened out and decided to go home or realized it's not smart to go caving alone."
	else
		puts "You've gotta decide 'yes' or 'no'.  So what is it?"
		beginhike
	end
end

def largeCavern
	puts "While in the large cave you can either light a match or try to adjust your eyes to the dark.  Which do you want?"
	cavernChoice = $stdin.gets.chomp
	if cavernChoice.downcase.include? 'match'
		puts "You can now see and can see the ceiling is covered with bats, but you can also see a door or something on the far wall."
		newHiker = Hiker.new
		newMonster = Monster.new
		newDoor
	else
		puts "You've waited to adjust your eyes and think you can see just fine.  To be safe you crawl on the ground so you can feel what is in front of you.  But you don't see the pit until its too late and you fall in and die."
		theEnd
	end
end

def newDoor
	puts "You walk to the new door and open it.  You can see and hear water now, hooray you won't die!  Do you want to have some of this water?"
	water = $stdin.gets.chomp
	if water.downcase.include? 'yes'
		puts "You die from poisons in the water."
	else
		puts "Ok, no water for now.  You cross the stream and find your way out.  Congrats!"
		#newHiker.attack(newMonster)
	end
end

def slideOn
	puts "You've ended up on a pile of pebbles.  You could throw some of these pebbles or light up the room with a match.  Which do you choose?"
	pebbleRoomChoice = $stdin.gets.chomp
	if pebbleRoomChoice.downcase.include? 'pebble'
		puts "<"
		puts "Great! You throw pebbles to get attention."
		neverEscape
	elsif pebbleRoomChoice.downcase.include? 'match'
		puts ">"
		puts "You can now see and realize there aren't pebbles, but gems."
		puts "You become very greedy and in your greed you decide you can't ever leave them."
		theEnd
	else
		puts "It's unfortunate but you only have two choices."
		slideOn
	end
end

beginhike














