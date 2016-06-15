require_relative "PowerInterface"
require_relative "StrenghtPower"
require_relative "HealPower"
require_relative "AvoidPower"
require_relative "Person"
require_relative "Wariror"
require_relative "Rouge"
require_relative "Mage"
require_relative "Thief"
require_relative "Bandit"
require_relative "King"


king = King.new()
thief = Thief.new()
bandit = Bandit.new()
opponents = [thief,bandit,king]
strenghtPower = StrenghtPower.new
healPower = HealPower.new
avoidPower = AvoidPower.new
skills = [strenghtPower, healPower , avoidPower]
puts("Welcome hero! You need to defeat your opponents in the arena. Which profession is your destiny?")
puts("Type W for Wariror, R for Rouge and M for Mage")
profession = gets.chomp

def battle(hero,opponent,skills)
	while not((opponent.isKilled)||(hero.isKilled))
	invalid = true
		while(invalid)
puts("Your turn please select a skill")
puts("Type S for StrenghtPower , H for HealPower and A for AvoidPower ")
powerChoice = gets.chomp
			skills.each do |x|
				if (String(x.class.name)[0]==powerChoice)
		hero.acquirePower(x)
		hero.usePower
		invalid = false
				end
	
			end
			if (rand(100)*opponent.avoidChance>1)
				puts("You missed")

			else 
				puts("You hit")
				opponentHealth = opponent.getHealth-hero.getAttack
				opponent.setHealth(opponentHealth)
				puts("Opponnents new status")
				opponent.seeStatus
 				if(opponentHealth<=0)
 					opponent.isKilled =true
 					puts("YOU KILLED HIM")

 					return true
 				end
 			end	
 			if (rand(100)*hero.avoidChance>1)
						puts("He missed")
			else
				puts("he hit you, your new status:")
				heroHealth = hero.getHealth-opponent.getAttack
				hero.setHealth(heroHealth)
				hero.seeStatus
				if(heroHealth<=0)
					puts("YOU ARE DEAD")
					hero.isKilled = true
					return false
				end
			end
				



		end	 
		
	end
end

def startArena(player,opponents,skills)
		haveOpponent = true
while(haveOpponent)
	puts("Your stats are")
	player.seeStatus
opponent = introduceOpponents(opponents)
if not(opponent)
	return 0 
end

puts("Your opponent's stats are ")
opponent.seeStatus

result = battle(player,opponent,skills)
if(result)
	opponents.delete(opponent)
else
	return 0
end
haveOpponent =opponent#check again if not working simply change the haveopponent flag

end
end

def introduceOpponents(array)
	if(array.count()<1)
		puts("CONGURATIONS YOU HAVE DEFEATED THEM ALL")
		return false

	end

else
	flag = true
	while(flag)
	puts("You have " + array.count().to_s + " opponents you have to defeat them all you wont start over after defeating each opponent.So choose wisely ...")
	array.each do |x|
		puts("--"+String(x.class.name+"---"))
		puts("to choose this opponent type " +String(x.class.name)[0])
		x.seeStatus
	end

choice = gets.chomp
array.each do |x|
	if (String(x.class.name)[0]==choice)
		puts("You vs " + String(x.class.name ))
		flag = false
		return x
	end
	
end
if(flag)
	puts("PLEASE ENTER A VALID CHOICE")
end

end
	
end
if (profession =="w")||(profession=="W")
	puts("Welcome mighty Wariror")
	player = Wariror.new()

	startArena(player,opponents,skills)


elsif (profession =="m")||(profession=="M")
	puts("Welcome mighty Mage")
	player = Mage.new()

	startArena(player,opponents,skills)


elsif (profession =="r")||(profession=="R")
	puts("Welcome mighty Rouge")
	player = Rouge.new()

	startArena(player,opponents,skills)

end

